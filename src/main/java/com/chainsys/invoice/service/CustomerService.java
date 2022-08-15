package com.chainsys.invoice.service;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.invoice.dao.CustomerRepository;
import com.chainsys.invoice.dao.InvoiceRepository;
import com.chainsys.invoice.dto.CustomerInvoiceDetailsDTO;
import com.chainsys.invoice.model.Customer;
import com.chainsys.invoice.model.Invoice;

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
		return customerRepo.findAll();
	}
	
	public void deleteById(int id) {
		customerRepo.deleteById(id);
	}
	
	public CustomerInvoiceDetailsDTO getCustomerInvoices(int id) {
		Customer customer = findById(id);
		CustomerInvoiceDetailsDTO dto = new CustomerInvoiceDetailsDTO();
		dto.setCustomer(customer);
		 List<Invoice> invoiceList = invoiceRepo.findByCustomerId(id);
	        Iterator<Invoice> iterator = invoiceList.iterator();
	        while(iterator.hasNext()) {
	        	dto.addcustomerAndInvoiceList(iterator.next());
	        }
	        return dto;
	}
	
	
}
