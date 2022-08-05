package com.chainsys.invoice.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;

public interface InvoiceDetailsRepository extends CrudRepository<InvoiceDetails, String>{
	Optional<InvoiceDetails> findById(String id);
	
	InvoiceDetails save(InvoiceDetails inDetails);
	
	void deleteById(String id);
	
	List<InvoiceDetails> findAll();
	
	Optional<InvoiceDetails> findByInvoiceNumber(String id);
}
