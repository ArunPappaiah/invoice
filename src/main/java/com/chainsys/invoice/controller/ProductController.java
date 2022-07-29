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

import com.chainsys.invoice.pojo.Product;
import com.chainsys.invoice.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductService prService;
	
	@GetMapping("/getproductbyid")
	public String getProductById(@RequestParam("id") int id, Model model) {
		Product pr = prService.findById(id);
		model.addAttribute("getproduct",pr);
		return "find-product-by-id";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Product pr = new Product();
		model.addAttribute("addproduct",pr);
		return "add-product-form";
	}
	
	@PostMapping("/addproduct")
	public String addProduct(@ModelAttribute("addproduct") Product pr) {
		prService.save(pr);
		return "redirect:/product/getallproducts";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id") int id,Model model) {
		Product pr = prService.findById(id);
		model.addAttribute("updateproduct",pr);
		return "update-product-form";
	}
	
	@PostMapping("/updateproduct")
	public String modifyProduct(@ModelAttribute("updateproduct") Product pr) {
		prService.save(pr);
		return "redirect:/product/getallproducts";
	}
	
	@GetMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("id") int id) {
		prService.deleteById(id);
		return "redirect:/product/getallproducts";
	}
	
	@GetMapping("/getallproducts")
	public String getAllProducts(Model model) {
		List<Product> prList = prService.findAllProducts();
		model.addAttribute("allproducts",prList);
		return "list-products";
	}
}
