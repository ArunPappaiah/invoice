package com.chainsys.invoice.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.invoice.dao.CustomerRepository;
import com.chainsys.invoice.dao.InvoiceRepository;
import com.chainsys.invoice.dto.CustomerInvoiceDetailsDTO;
import com.chainsys.invoice.dto.InvoiceDetailsDTO;
import com.chainsys.invoice.model.Customer;
import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;
import com.chainsys.invoice.model.Product;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepository customerRepo;
	
	@Autowired
	private InvoiceRepository invoiceRepo;
	
	public Optional<Invoice> findById(String id) {
		return invoiceRepo.findById(id);
	}
	
	public Customer findById(int id) {
		return customerRepo.findById(id);
	}
	
	public Customer save(Customer cr) {
		customerRepo.save(cr);
		return customerRepo.save(cr);
	}
	
	public List<Customer> findAllCustomers(){
		List<Customer> crList = customerRepo.findAll();
		return crList;
	}
	
	public void deleteById(int id) {
		customerRepo.deleteById(id);
	}
	
	/* public InvoiceDetailsDTO getCustomerAndInvoices(int id) {
		Customer customer = findById(id);
		InvoiceDetailsDTO dto = new InvoiceDetailsDTO();
		dto.setCustomer(customer);
		 
	        
	        List<Invoice> invoiceList = invoiceRepo.findByCustomerId(id);
	        Iterator<Invoice> iterator = invoiceList.iterator();
	        while(iterator.hasNext()) {
	        	dto.addInvoice((Invoice)iterator.next());
	        }
		return dto;
	}   */
	
	public CustomerInvoiceDetailsDTO getCustomerInvoices(int id) {
		Customer customer = findById(id);
		CustomerInvoiceDetailsDTO dto = new CustomerInvoiceDetailsDTO();
		dto.setCustomer(customer);
		 List<Invoice> invoiceList = invoiceRepo.findByCustomerId(id);
	        Iterator<Invoice> iterator = invoiceList.iterator();
	        while(iterator.hasNext()) {
	        	dto.addcustomerAndInvoiceList((Invoice)iterator.next());
	        }
	        return dto;
	}
	
	
}
