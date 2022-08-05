package com.chainsys.invoice.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.invoice.dto.InvoiceDetailsDTO;
import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;

public interface InvoiceRepository extends CrudRepository<Invoice, String>{
	
	Optional<Invoice> findById(String id);
	
    // @Query("SELECT MAX(invoice_number)FROM Invoice")
    Invoice save(Invoice invoice);
    
    void deleteById(String id);
    
    List<Invoice> findAll();
    
    List<Invoice> findByCustomerId(int id);
    
    Invoice findByProductId(int id);
	/*
	 * @Query("SELECT MAX(invoice_number)FROM Invoice") List<Invoice>
	 * findMaxInvoiceNumber();
	 */
    
	
	//  @Query("SELECT MAX(invoice_number)FROM Invoice") 
	//  Optional<Invoice> getNextInvoiceNumber(String id);
	 
}
