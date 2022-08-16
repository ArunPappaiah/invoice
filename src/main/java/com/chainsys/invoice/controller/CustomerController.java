package com.chainsys.invoice.controller;

import java.util.List;

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
import com.chainsys.invoice.dto.CustomerInvoiceDetailsDTO;
import com.chainsys.invoice.model.Customer;
import com.chainsys.invoice.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	
	@GetMapping("/findcustomerform")
	public String findCustomerForm() {
		return "find-customer-form";
	}
	
	@GetMapping("/getcustomerbyid")
	public String getCustomerById(@RequestParam("id")int id ,Model model) {
		try {
		Customer cr = customerService.findById(id);
		model.addAttribute("getcustomer",cr);
		}catch(Exception e) {
			e.getMessage();
		}
		return "find-customer-by-id";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Customer cr = new Customer();
		model.addAttribute("addcustomer",cr);
		return "add-customer-form";
	}
	
	@PostMapping("/addcustomer")
	public String addCustomer( @Valid @ModelAttribute("addcustomer")Customer addCustomers,Errors addingErrors) { 
		if(addingErrors.hasErrors()) {
			return "add-customer-form";
		}
		customerService.save(addCustomers);
		return "redirect:/customer/getallcustomers";
	}
	
	@GetMapping("/updatemainform")
	public String findUpdateCustomerForm() {
		return "find-update-customer";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id")int id,Model model) {
		Customer cr = customerService.findById(id);
		model.addAttribute("updatecustomer",cr);
		return "update-customer-form";
	}
	
	@PostMapping("/updatecustomer")
	public String modifyCustomer(@Valid @ModelAttribute("updatecustomer") Customer updateCustomers,Errors updatingErrors) {
		if(updatingErrors.hasErrors()) {
			return "update-customer-form";
		}
		customerService.save(updateCustomers);
		return "redirect:/customer/getallcustomers";
	}
	
	@RequestMapping("/deleteform")
	public String deleteForm() {
		return "delete-customer";
	}
	
	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("id")int id) {
		customerService.deleteById(id);
		return "redirect:/customer/getallcustomers";
	}
	
	@GetMapping("/getallcustomers")
	public String getAllCustomers(Model model) {
		List<Customer> crList = customerService.findAllCustomers();
		model.addAttribute("allcustomers",crList);
		return "list-customers";
	}
	
	@GetMapping("/getcustomerinvoiceform")
	public String findCustomerInvoicesForm() {
		return "find-customer-invoices";
	}
	
	@GetMapping("/getcustomerinvoices")
	public String getCustomerInvoices1(@RequestParam("id")int id,Model model) {
		CustomerInvoiceDetailsDTO dto = customerService.getCustomerInvoices(id);
		model.addAttribute("getcustomerinvoices",dto.getCustomer());
		model.addAttribute("invoicelist",dto.getInvoiceList());
		return "list-customer-invoices";
	}
}
