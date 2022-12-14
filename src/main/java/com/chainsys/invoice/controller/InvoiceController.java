package com.chainsys.invoice.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.invoice.dto.InvoiceAndInvoiceDetailsDTO;
import com.chainsys.invoice.dto.InvoiceDetailsDTO;
import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;
import com.chainsys.invoice.model.Product;
import com.chainsys.invoice.service.InvoiceService;
import com.chainsys.invoice.service.ProductService;

@Controller
@RequestMapping("/invoice")
public class InvoiceController {
	
	@Autowired
	InvoiceService invoiceService;
	
	@Autowired
	ProductService productRepo;
	
	public static final String LISTINVOICE = "redirect:/invoice/getallinvoices";
	
	@GetMapping("/findinvoiceform")
	public String findInvoiceForm() {
		return "find-invoice-form";
	}
	
	@GetMapping("/getinvoicebyid")
	public String getInvoiceById(@RequestParam("id") String id,Model model) {
		try {
		Optional<Invoice> iv = invoiceService.findById(id);
		model.addAttribute("getinvoice",iv);
		}catch(Exception e) {
			e.getMessage();
		}
		return "find-invoice-by-id";
	}
	
	@GetMapping("/updatemainform")
	public String findUpdateInvoiceForm() {
		return "find-update-invoice";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id")String id,Model model) {
	    Optional<Invoice> iv = invoiceService.findById(id);
		model.addAttribute("updateinvoice",iv);
		return "update-invoice-form";
	}
	
	@PostMapping("/updateinvoice")
	public String modifyInvoice(@Valid @ModelAttribute("updateinvoice") Invoice updateInvoices,Errors errors) {
		if(errors.hasErrors()) {
			return "update-invoice-form";
		}
		invoiceService.save(updateInvoices);
		return LISTINVOICE;
	}
	
	@GetMapping("/deleteform")
	public String deleteForm() {
		return "delete-invoice";
	}
	
	@GetMapping("/deleteinvoice")
	public String deleteInvoice(@RequestParam("id")String id) {
		invoiceService.deleteById(id);
		return LISTINVOICE;
	}
	
	@GetMapping("/getallinvoices")
	public String getAllInvoices(Model model) {
		List<Invoice> ivList = invoiceService.findAllInvoices();
		model.addAttribute("allinvoices",ivList);
		return "list-invoices";
	} 
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		List<Product> allProduct = productRepo.allProduct();
		model.addAttribute("allproduct",allProduct);
		Invoice iv = new Invoice();
		model.addAttribute("addinvoice",iv);
		return "add-invoice-form";
	}
	
	@PostMapping("/addinvoice")
	public String addInvoice(@Valid @ModelAttribute("addinvoice")Invoice addInvoice,Errors errors) {
		if(errors.hasErrors()) {
			return "add-invoice-form";
		}
		invoiceService.save(addInvoice);
		return LISTINVOICE;
	}
	
	@GetMapping("/form")
	public String findInvoiceForm(@RequestParam("productId") int id, Model model) {
		Product product = productRepo.findById(id);
		InvoiceDetailsDTO dto = new InvoiceDetailsDTO();
		dto.setProductId(id);
		dto.setPrice(product.getPrice());
		dto.setGst((int) product.getGstRate());
		model.addAttribute("addinvoiceanddetails",dto);
		return "add-invoice-and-details-form";
	}
	
	 @GetMapping("/transtest")
	   	public String addInvoiceAndDetails(@ModelAttribute("addinvoiceanddetails")Invoice invoice,InvoiceDetails invoiceDetails){
	    	InvoiceDetailsDTO dto = new InvoiceDetailsDTO();
			dto.setInvoiceNumber(invoice.getInvoiceNumber());
			dto.setInvoiceDate(invoice.getInvoiceDate());
			dto.setCustomerId(invoice.getCustomerId());
			dto.setProductId1(invoice.getProductId());
			dto.setTransportationCharges(invoice.getTransportationCharges());
			dto.setTotalAmount(invoice.getTotalAmount());
			dto.setInvoice(invoice);
			
			dto.setInvoiceNumber1(invoiceDetails.getInvoiceNumber());
			dto.setProductId(invoiceDetails.getProductId());
			dto.setQuantity(invoiceDetails.getQuantity());
			dto.setPrice(invoiceDetails.getPrice());
			dto.setGst(invoiceDetails.getGst());
			dto.setAmount(invoiceDetails.getAmount());
			dto.addInvoiceDetails(invoiceDetails);
			
			 invoiceService.addInvoiceAndInvoiceDetails(dto);
			return LISTINVOICE;
		}
   
    @GetMapping("/updateinvoiceanddetailsmainform")
	public String findUpdateInvoiceAndDetailsForm() {
		return "find-update-invoice-and-details";
	}
 
    @GetMapping("/getinvoiceanddetailsform")
	public String findCustomerInvoicesForm() {
		return "find-invoice-and-details";
	}
    
    @GetMapping("/getinvoiceandinvoicedetails")
    public String getInvoiceAndInvoiceDetails(@RequestParam("id")String id,Model model) {
    	InvoiceAndInvoiceDetailsDTO dto = invoiceService.getInvoiceAndInvoiceDetails(id);
    	model.addAttribute("getinvoiceandinvoicedetails",dto.getInvoice());
    	model.addAttribute("invoicedetailslist",dto.getInvoiceDetails());
    	return "list-invoice-and-invoicedetails";
    }
    
}
