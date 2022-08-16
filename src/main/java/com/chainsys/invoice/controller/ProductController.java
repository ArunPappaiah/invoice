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

import com.chainsys.invoice.dto.ProductInvoiceDetailsDTO;
import com.chainsys.invoice.model.Product;
import com.chainsys.invoice.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Product pr = new Product();
		model.addAttribute("addproduct",pr);
		return "add-product-form";
	}
	
	@PostMapping("/addproduct")
	public String addProduct(@Valid @ModelAttribute("addproduct") Product addProduct,Errors errors) {
		if(errors.hasErrors()) {
			return "add-product-form";
		}
		productService.save(addProduct);
		return "redirect:/product/getallproducts";
	}
	
	@GetMapping("/updatemainform")
	public String findUpdateProductForm() {
		return "find-update-product";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("productId") int id,Model model) {
		Product pr = productService.findById(id);
		model.addAttribute("updateproduct",pr);
		return "update-product-form";
	}
	
	@PostMapping("/updateproduct")
	public String modifyProduct(@Valid @ModelAttribute("updateproduct") Product updateProduct,Errors errors) {
		if(errors.hasErrors()) {
			return "update-product-form";
		}
		productService.save(updateProduct);
		return "redirect:/product/getallproducts";
	}
	
	@GetMapping("/deleteform")
	public String deleteForm() {
		return "delete-product";
	}
	
	@GetMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("product_id") int id) {
		productService.deleteById(id);
		return "redirect:/product/getallproducts";
	}
	
	@GetMapping("/findproductform")
	public String findProductForm() {
		return "find-product";
	}
	
	@GetMapping("/getproductbyid")
	public String getProductById(@RequestParam("productId") int id,Model model) {
		try {
		Product pr = productService.findById(id);
		model.addAttribute("getproduct",pr);
		}catch(Exception e) {
			e.getMessage();
		}
		return "find-product-by-id";
	}
	
	@GetMapping("/getallproducts")
	public String getAllProducts(Model model) {
		List<Product> prList = productService.findAllProducts();
		model.addAttribute("allproducts",prList);
		return "list-products";
	}
	@GetMapping("/getproductinvoiceform")
	public String findProductInvoiceForm() {
		return "find-product-and-invoice";
	}
	@GetMapping("/getproductandinvoice")
	public String getProductAndInvoice(@RequestParam("id")int id,Model model) {
		ProductInvoiceDetailsDTO dto = productService.getProductAndInvoice(id);
		model.addAttribute("getproduct",dto.getProduct());
		model.addAttribute("getinvoice",dto.getInvoiceList());
		return "list-product-and-invoice";
	}
}
