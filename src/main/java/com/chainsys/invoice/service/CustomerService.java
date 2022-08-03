package com.chainsys.invoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.invoice.dao.CustomerRepository;
import com.chainsys.invoice.model.Customer;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepository customerRepo;
	
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
}
