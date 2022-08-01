package com.chainsys.invoice.service;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.invoice.dao.InvoiceRepository;
import com.chainsys.invoice.model.Invoice;

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
	
	
	/*
	 * public List<Invoice> findMaxInvoiceNumber(){ List<Invoice> maxInvoice =
	 * invoiceRepo.findMaxInvoiceNumber(); return maxInvoice; }
	 */
	
/*	public Optional<Invoice> getNextInvoiceNumber(String id) {
		Invoice iv = new Invoice();
		if(invoiceRepo.getNextInvoiceNumber(id)==null) {
			iv.setInvoice_number("E-0000001");
		}else {
		    long id1 = Long.parseLong(iv.getInvoice_number().substring(2,iv.getInvoice_number().length()));
		    id1++;
		    iv.setInvoice_number("E-"+String.format("%07d",id1));
		}
		
		return invoiceRepo.getNextInvoiceNumber(id);
	}  */
}
