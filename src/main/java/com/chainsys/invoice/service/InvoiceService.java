package com.chainsys.invoice.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.invoice.dao.InvoiceRepository;
import com.chainsys.invoice.pojo.Invoice;

@Service
public class InvoiceService {
	
	@Autowired
	private InvoiceRepository invoiceRepo;
	
	public Optional<Invoice> findById(String id) {
		return invoiceRepo.findById(id);
	}
	
	public Invoice save(Invoice invoice) {
		invoiceRepo.save(invoice);
		return invoiceRepo.save(invoice);
	}
	
	public List<Invoice> findAllInvoices(){
		List<Invoice> invoiceList = invoiceRepo.findAll();
		return invoiceList;
	}
	
	public void deleteById(String id) {
		invoiceRepo.deleteById(id);
	}
}
