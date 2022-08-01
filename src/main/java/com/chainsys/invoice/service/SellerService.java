package com.chainsys.invoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.invoice.dao.SellerRepository;
import com.chainsys.invoice.model.Seller;

@Service
public class SellerService {
	
	@Autowired
	private SellerRepository srRepo;
	
	public Seller findById(int id) {
		return srRepo.findById(id);
	}
	
	public Seller save(Seller sr) {
		srRepo.save(sr);
		return srRepo.save(sr);
	}
	
	public List<Seller> findAllSellers(){
		List<Seller> srList = srRepo.findAll();
		return srList;
	}
	
	public void deleteById(int id) {
		srRepo.deleteById(id);
	}
}
