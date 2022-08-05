package com.chainsys.invoice.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.invoice.dto.InvoiceAndInvoiceDetailsDTO;
import com.chainsys.invoice.dto.InvoiceDetailsDTO;
import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;
import com.chainsys.invoice.service.InvoiceService;

@Controller
@RequestMapping("/invoice")
public class InvoiceController {
	
	@Autowired
	InvoiceService invoiceService;
	
	@GetMapping("/findinvoiceform")
	public String findInvoiceForm() {
		return "find-invoice-form";
	}
	
	@GetMapping("/getinvoicebyid")
	public String getInvoiceById(@RequestParam("id") String id,Model model) {
		Optional<Invoice> iv = invoiceService.findById(id);
		model.addAttribute("getinvoice",iv);
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
	public String modifyInvoice(@ModelAttribute("updateinvoice") Invoice iv) {
		invoiceService.save(iv);
		return "redirect:/invoice/getallinvoices";
	}
	
	@GetMapping("/deleteinvoice")
	public String deleteInvoice(@RequestParam("id")String id) {
		invoiceService.deleteById(id);
		return "redirect:/invoice/getallinvoices";
	}
	
	@GetMapping("/getallinvoices")
	public String getAllInvoices(Model model) {
		List<Invoice> ivList = invoiceService.findAllInvoices();
		model.addAttribute("allinvoices",ivList);
		return "list-invoices";
	} 
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Invoice iv = new Invoice();
		model.addAttribute("addinvoice",iv);
		return "add-invoice-form";
	}
	
	@PostMapping("/addinvoice")
	public String addInvoice(@ModelAttribute("addinvoice")Invoice iv) {
		// iv.setTransportationCharges(50);
		invoiceService.save(iv);
		return "redirect:/invoice/getallinvoices";
	}
	
	@GetMapping("/form")
	public String findInvoiceForm(Model model) {
		InvoiceDetailsDTO dto = new InvoiceDetailsDTO();
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
		return "Added successfully!!";
	}
    
    @GetMapping("/updateinvoiceanddetailsmainform")
	public String findUpdateInvoiceAndDetailsForm() {
		return "find-update-invoice-and-details";
	}
    
    @GetMapping("/updateinvoiceanddetailsform")
	public String findInvoiceDetailsForm(@RequestParam("id")String id,Model model) {
    	//Optional<InvoiceDetailsDTO> invoice =invoiceService.findById(id);
		/* Optional<Invoice> invoice =invoiceService.findById(id);
		model.addAttribute("updateinvoiceanddetails",invoice);
		Optional<InvoiceDetails> invoiceDetails = invoiceService.findById1(id);
		model.addAttribute("updateinvoiceanddetails",invoiceDetails); */
		return "update-invoice-and-details-form";
	}
    
    @GetMapping("/updateinvoiceanddetails")
   	public String updateInvoiceAndDetails(@ModelAttribute("updateinvoiceanddetails")Invoice invoice,InvoiceDetails invoiceDetails){
    	InvoiceDetailsDTO dto = new InvoiceDetailsDTO();
		dto.setInvoiceNumber(invoice.getInvoiceNumber());
		dto.setInvoiceDate(invoice.getInvoiceDate());
		dto.setCustomerId(invoice.getCustomerId());
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
		return "Updated successfully!!";
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
	/*@PostMapping("/getmaxinvoice")
	public String getMaxInvoiceNum(Model model) {
		Invoice iv = new Invoice();
		List<Invoice> ivList = invoiceService.findAllInvoices();
		if(ivList==null) {
			iv.setInvoice_number("E-00000001");
		}else {
			    long id1 = Long.parseLong(iv.getInvoice_number().substring(2,iv.getInvoice_number().length()));
			    id1++;
			    iv.setInvoice_number("E-"+String.format("%07d",id1));
			}
			// return invoiceService.findMaxInvoiceNumber(id1);
		model.addAttribute("getmaxinvoice",ivList);
		return "list-max-invoices";
	}  */
}
