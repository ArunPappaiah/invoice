package com.chainsys.invoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.invoice.dao.ProductRepository;
import com.chainsys.invoice.model.Product;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository prRepo;
	
	public Product findById(int id) {
		return prRepo.findById(id);
	}
	
	public Product save(Product pr) {
		prRepo.save(pr);
		return prRepo.save(pr);
	}
	
	public List<Product> findAllProducts(){
		List<Product> prList = prRepo.findAll();
		return prList;
	}
	
	public void deleteById(int id) {
		prRepo.deleteById(id);
	}
}
