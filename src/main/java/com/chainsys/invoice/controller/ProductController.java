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

import com.chainsys.invoice.model.Product;
import com.chainsys.invoice.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductService prService;
	
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
	
	@RequestMapping("/deleteform")
	public String deleteForm() {
		return "delete-product";
	}
	
	@RequestMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("product_id") int id) {
		prService.deleteById(id);
		return "redirect:/product/getallproducts";
	}
	
	@GetMapping("/findproductform")
	public String findProductForm() {
		return "find-product";
	}
	
	@GetMapping("/getproductbyid")
	public String getProductById(@RequestParam("productId") int id,Model model) {
		Product pr = prService.findById(id);
		model.addAttribute("getproduct",pr);
		return "find-product-by-id";
	}
	
	@GetMapping("/getallproducts")
	public String getAllProducts(Model model) {
		List<Product> prList = prService.findAllProducts();
		model.addAttribute("allproducts",prList);
		return "list-products";
	}
}
