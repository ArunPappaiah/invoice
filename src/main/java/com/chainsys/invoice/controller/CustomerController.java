package com.chainsys.invoice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.invoice.model.Customer;
import com.chainsys.invoice.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerService crService;
	
	@GetMapping("/findcustomerform")
	public String findCustomerForm() {
		return "find-customer-form";
	}
	
	@GetMapping("/getcustomerbyid")
	public String getCustomerById(@RequestParam("id")int id ,Model model) {
		Customer cr = crService.findById(id);
		model.addAttribute("getcustomer",cr);
		return "find-customer-by-id";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Customer cr = new Customer();
		model.addAttribute("addcustomer",cr);
		return "add-customer-form";
	}
	
	@PostMapping("/addcustomer")
	public String addCustomer(@ModelAttribute("addcustomer")Customer cr) {
		crService.save(cr);
		return "redirect:/customer/getallcustomers";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id")int id,Model model) {
		Customer cr = crService.findById(id);
		model.addAttribute("updatecustomer",cr);
		return "update-customer-form";
	}
	
	@PostMapping("/updatecustomer")
	public String modifyCustomer(@ModelAttribute("updatecustomer") Customer cr) {
		crService.save(cr);
		return "redirect:/customer/getallcustomers";
	}
	
	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("id")int id) {
		crService.deleteById(id);
		return "redirect:/customer/getallcustomers";
	}
	
	@GetMapping("/getallcustomers")
	public String getAllCustomers(Model model) {
		List<Customer> crList = crService.findAllCustomers();
		model.addAttribute("allcustomers",crList);
		return "list-customers";
	}
}
