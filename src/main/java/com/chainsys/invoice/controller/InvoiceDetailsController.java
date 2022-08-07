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

import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;
import com.chainsys.invoice.service.InvoiceDetailsService;

@Controller
@RequestMapping("/invoicedetails")
public class InvoiceDetailsController {
	
	@Autowired
	InvoiceDetailsService invoiceDetailService;
	
	@GetMapping("/findinvoicedetailsform")
	public String findInvoiceForm() {
		return "find-invoice-details-form";
	}
	
	@GetMapping("getinvoicedetailsbyid")
	public String getInvoiceDetailsById(@RequestParam("id")String id,Model model) {
		Optional<InvoiceDetails> iv = invoiceDetailService.findById(id);
		model.addAttribute("getinvoicedetails",iv);
		return "find-invoicedetails-by-id";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		InvoiceDetails ivDetails = new InvoiceDetails();
		model.addAttribute("addinvoicedetails",ivDetails);
		return "add-invoicedetails-form";
	}
	
	@PostMapping("/addinvoicedetails")
	public String addInvoiceDetails( @Valid @ModelAttribute("addinvoicedetails")InvoiceDetails ivDetails,Errors errors) {
		if(errors.hasErrors()) {
			return "add-invoicedetails-form";
		}
		invoiceDetailService.save(ivDetails);
		return "redirect:/invoicedetails/getallinvoicedetails";
	}
	
	@GetMapping("/updatemainform")
	public String findUpdateInvoiceForm() {
		return "find-update-invoice-details";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id")String id,Model model) {
		Optional<InvoiceDetails> ivDetails = invoiceDetailService.findById(id);
		model.addAttribute("updateinvoicedetails",ivDetails);
		return "update-invoice-details-form";
	}
	
	@PostMapping("/updateinvoicedetails")
	public String modifyInvoiceDetails(@ModelAttribute("updateinvoicedetails") InvoiceDetails ivDetails) {
		invoiceDetailService.save(ivDetails);
		return "redirect:/invoicedetails/getallinvoicedetails";
	}
	
	@GetMapping("/deleteinvoicedetails")
	public String deleteInvoiceDetails(@RequestParam("id")String id) {
		invoiceDetailService.deleteById(id);
		return "redirect:/invoicedetails/getallinvoicedetails";
	}
	
	@GetMapping("/getallinvoicedetails")
	public String getAllInvoiceDetails(Model model) {
		List<InvoiceDetails> ivDetailsList = invoiceDetailService.findAllInvoicesDetails();
		model.addAttribute("allinvoicedetails",ivDetailsList);
		return "list-invoicedetails";
	}
}
