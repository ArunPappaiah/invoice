package com.chainsys.invoice.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.invoice.pojo.Invoice;

public interface InvoiceRepository extends CrudRepository<Invoice, String>{
	Optional<Invoice> findById(String id);
	
    Invoice save(Invoice invoice);
    
    void deleteById(String id);
    
    List<Invoice> findAll();
}
