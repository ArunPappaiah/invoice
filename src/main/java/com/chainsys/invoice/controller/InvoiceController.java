package com.chainsys.invoice.controller;

import java.util.ArrayList;
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
import com.chainsys.invoice.service.InvoiceService;

@Controller
@RequestMapping("/invoice")
public class InvoiceController {
	
	@Autowired
	InvoiceService ivService;
	
	@GetMapping("/getinvoicebyid")
	public String getInvoiceById(@RequestParam("id") String id,Model model) {
		Optional<Invoice> iv = ivService.findById(id);
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
		ivService.save(iv);
		return "redirect:/invoice/getallinvoices";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id")String id,Model model) {
	    Optional<Invoice> iv = ivService.findById(id);
		model.addAttribute("updateinvoice",iv);
		return "update-invoice-form";
	}
	
	@PostMapping("/updateinvoice")
	public String modifyInvoice(@ModelAttribute("updateinvoice") Invoice iv) {
		ivService.save(iv);
		return "redirect:/invoice/getallinvoices";
	}
	
	@GetMapping("/deleteinvoice")
	public String deleteInvoice(@RequestParam("id")String id) {
		ivService.deleteById(id);
		return "redirect:/invoice/getallinvoices";
	}
	
	@GetMapping("/getallinvoices")
	public String getAllInvoices(Model model) {
		List<Invoice> ivList = ivService.findAllInvoices();
		model.addAttribute("allinvoices",ivList);
		return "list-invoices";
	} 
	
	/*@PostMapping("/getmaxinvoice")
	public String getMaxInvoiceNum(Model model) {
		Invoice iv = new Invoice();
		List<Invoice> ivList = ivService.findAllInvoices();
		if(ivList==null) {
			iv.setInvoice_number("E-00000001");
		}else {
			    long id1 = Long.parseLong(iv.getInvoice_number().substring(2,iv.getInvoice_number().length()));
			    id1++;
			    iv.setInvoice_number("E-"+String.format("%07d",id1));
			}
			// return ivService.findMaxInvoiceNumber(id1);
		model.addAttribute("getmaxinvoice",ivList);
		return "list-max-invoices";
	}  */
}
