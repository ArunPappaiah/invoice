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

import com.chainsys.invoice.model.Seller;
import com.chainsys.invoice.service.SellerService;


@Controller
@RequestMapping("/seller")
public class SellerController {

	@Autowired
	SellerService sellerService;

	@GetMapping("/getsellerbyid")
	public String getSellerById(@RequestParam("id") int id, Model model) {
		Seller sr = sellerService.findById(id);
		model.addAttribute("getseller",sr);
		return "find-seller-by-id";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Seller sr = new Seller();
		model.addAttribute("addseller",sr);
		return "add-seller-form";
	}
	
	@PostMapping("/addseller")
	public String addSeller(@ModelAttribute("addseller")Seller sr) {
		sellerService.save(sr);
		return "redirect:/seller/getallsellers";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id")int id,Model model) {
		Seller sr = sellerService.findById(id);
		model.addAttribute("updateseller",sr);
		return "update-seller-form";
	}
	
	@PostMapping("/updateseller")
	public String modifySeller(@ModelAttribute("updateseller") Seller sr) {
		sellerService.save(sr);
		return "redirect:/seller/getallsellers";
	}
	
	@GetMapping("/deleteseller")
	public String deleteSeller(@RequestParam("id")int id) {
		sellerService.deleteById(id);
		return "redirect:/seller/getallsellers";
	}
	
	@GetMapping("/getallsellers")
	public String getAllSellers(Model model) {
		List<Seller> srList = sellerService.findAllSellers();
		model.addAttribute("allsellers",srList);
		return "list-sellers";
	}
	
}
