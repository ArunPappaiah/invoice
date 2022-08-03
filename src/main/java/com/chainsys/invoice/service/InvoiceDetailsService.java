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
	private InvoiceDetailsRepository invoiceDetailsRepo;
	
	public Optional<InvoiceDetails> findById(String id) {
		return invoiceDetailsRepo.findById(id);
	}
	
	public InvoiceDetails save(InvoiceDetails inDetails) {
		invoiceDetailsRepo.save(inDetails);
		return invoiceDetailsRepo.save(inDetails);
	}
	
	public List<InvoiceDetails> findAllInvoicesDetails(){
		List<InvoiceDetails> inDetailsList = invoiceDetailsRepo.findAll();
		return inDetailsList;
	}
	
	public void deleteById(String id) {
		invoiceDetailsRepo.deleteById(id);
	}
}
