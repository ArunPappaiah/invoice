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
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;
import com.chainsys.invoice.model.InvoiceDetailsDTO;
import com.chainsys.invoice.service.InvoiceService;

@Controller
@RequestMapping("/invoice")
public class InvoiceController {
	
	@Autowired
	InvoiceService invoiceService;
	
	@GetMapping("/getinvoicebyid")
	public String getInvoiceById(@RequestParam("id") String id,Model model) {
		Optional<Invoice> iv = invoiceService.findById(id);
		model.addAttribute("getinvoice",iv);
		return "find-invoice-by-id";
	}
	
	// Need change for this method
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Invoice iv = new Invoice();
		model.addAttribute("addinvoice",iv);
		return "add-invoice-form";
	}
	
	@PostMapping("/addinvoice")
	public String addInvoice(@ModelAttribute("addinvoice")Invoice iv) {
		invoiceService.save(iv);
		return "redirect:/invoice/getallinvoices";
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
	@GetMapping("/transform")
	public String showTransForm(Model model) {
		Invoice invoice = new Invoice();
		InvoiceDetails invoiceDetails = new InvoiceDetails();
	    model.addAttribute("addinvoiceanddetails",invoice);
		model.addAttribute("addinvoiceanddetails",invoiceDetails);	
		return "add-invoice-and-details-form";
	}
	private static java.sql.Date convertTosqlDate(java.util.Date date) {
		java.sql.Date sqldate = new java.sql.Date(date.getTime());
		return sqldate;
	}
	@GetMapping("/trans")
	public String testTransaction(@ModelAttribute("addinvoiceanddetails")Invoice invoice,InvoiceDetails invoiceDetails) {
		InvoiceDetailsDTO dto = new InvoiceDetailsDTO();
		// Invoice invoice = new Invoice();
		invoice.setInvoiceNumber(invoice.getInvoiceNumber());
		// Date date = new Date();
		// dto.setInvoice(invoice)
		dto.setInvoiceDate(invoice.getInvoiceDate());
		invoice.setCustomerId(invoice.getCustomerId());
		invoice.setTransportationCharges(invoice.getTransportationCharges());
		invoice.setTotalAmount(invoice.getTotalAmount());
		dto.setInvoice(invoice);
		// model.addAttribute("addinvoiceanddetails",invoice);
		// InvoiceDetails invoiceDetails = new InvoiceDetails();
		invoiceDetails.setInvoiceNumber(invoiceDetails.getInvoiceNumber());
		invoiceDetails.setProductId(invoiceDetails.getProductId());
		invoiceDetails.setQuantity(invoiceDetails.getQuantity());
		invoiceDetails.setPrice(invoiceDetails.getPrice());
		invoiceDetails.setGst(invoiceDetails.getGst());
		invoiceDetails.setAmount(invoiceDetails.getAmount());
		dto.addInvoiceDetails(invoiceDetails);
		// model.addAttribute("addinvoiceanddetails",invoiceDetails);
		 invoiceService.addInvoiceAndInvoiceDetails(dto);
		return "Added";
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
