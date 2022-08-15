package com.chainsys.invoice.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.invoice.dao.InvoiceDetailsRepository;
import com.chainsys.invoice.dao.InvoiceRepository;
import com.chainsys.invoice.dto.InvoiceAndInvoiceDetailsDTO;
import com.chainsys.invoice.dto.InvoiceDetailsDTO;
import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;

@Service
public class InvoiceService {
	
	@Autowired
	private InvoiceRepository invoiceRepo;
	@Autowired
	private InvoiceDetailsRepository invoiceDetailsRepo;
	
	public Optional<Invoice> findById(String id) {
		return invoiceRepo.findById(id);
	}
	
	public Optional<InvoiceDetails> findInvoiceDetailsById(String id){
		return invoiceDetailsRepo.findById(id);
	}

	public Invoice save(Invoice invoice) {
		invoiceRepo.save(invoice);
		return invoiceRepo.save(invoice);
	}
	
	public List<Invoice> findAllInvoices(){
		return invoiceRepo.findAll();
	}
	
	public void deleteById(String id) {
		invoiceRepo.deleteById(id);
	}
	@Transactional
	public void addInvoiceAndInvoiceDetails(InvoiceDetailsDTO dto) {
		Invoice invoice = dto.getInvoice();
		save(invoice);
		List<InvoiceDetails> invoiceDetailsList = dto.getInvoiceDetails();
		int count = invoiceDetailsList.size();
		for(int i=0;i<count;i++) {
			invoiceDetailsRepo.save(invoiceDetailsList.get(i));
		}
	}
	
	 public InvoiceAndInvoiceDetailsDTO getInvoiceAndInvoiceDetails(String id) {
		Optional<Invoice> invoice = findById(id);
		InvoiceAndInvoiceDetailsDTO dto = new InvoiceAndInvoiceDetailsDTO();
		dto.setInvoice(invoice);
		Optional<InvoiceDetails> invoiceDetails = invoiceDetailsRepo.findByInvoiceNumber(id);
		dto.setInvoiceDetails(invoiceDetails);
		return dto;
	} 
	 
}
