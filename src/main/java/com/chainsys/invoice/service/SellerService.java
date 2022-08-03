package com.chainsys.invoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.invoice.dao.SellerRepository;
import com.chainsys.invoice.model.Seller;

@Service
public class SellerService {
	
	@Autowired
	private SellerRepository sellerRepo;
	
	public Seller findById(int id) {
		return sellerRepo.findById(id);
	}
	
	public Seller save(Seller sr) {
		sellerRepo.save(sr);
		return sellerRepo.save(sr);
	}
	
	public List<Seller> findAllSellers(){
		List<Seller> srList = sellerRepo.findAll();
		return srList;
	}
	
	public void deleteById(int id) {
		sellerRepo.deleteById(id);
	}
}
