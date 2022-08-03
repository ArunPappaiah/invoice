package com.chainsys.invoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.invoice.dao.ProductRepository;
import com.chainsys.invoice.model.Product;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepo;
	
	public Product findById(int id) {
		return productRepo.findById(id);
	}
	
	public Product save(Product pr) {
		productRepo.save(pr);
		return productRepo.save(pr);
	}
	
	public List<Product> findAllProducts(){
		List<Product> prList = productRepo.findAll();
		return prList;
	}
	
	public void deleteById(int id) {
		productRepo.deleteById(id);
	}
}
