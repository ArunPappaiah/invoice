package com.chainsys.invoice.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.invoice.dao.InvoiceDetailsRepository;
import com.chainsys.invoice.model.InvoiceDetails;

@Service
public class InvoiceDetailsService {

	@Autowired
	private InvoiceDetailsRepository inDetailsRepo;
	
	public Optional<InvoiceDetails> findById(String id) {
		return inDetailsRepo.findById(id);
	}
	
	public InvoiceDetails save(InvoiceDetails inDetails) {
		inDetailsRepo.save(inDetails);
		return inDetailsRepo.save(inDetails);
	}
	
	public List<InvoiceDetails> findAllInvoicesDetails(){
		List<InvoiceDetails> inDetailsList = inDetailsRepo.findAll();
		return inDetailsList;
	}
	
	public void deleteById(String id) {
		inDetailsRepo.deleteById(id);
	}
}
