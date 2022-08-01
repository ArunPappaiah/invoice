package com.chainsys.invoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.invoice.dao.CustomerRepository;
import com.chainsys.invoice.model.Customer;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepository crRepo;
	
	public Customer findById(int id) {
		return crRepo.findById(id);
	}
	
	public Customer save(Customer cr) {
		crRepo.save(cr);
		return crRepo.save(cr);
	}
	
	public List<Customer> findAllCustomers(){
		List<Customer> crList = crRepo.findAll();
		return crList;
	}
	
	public void deleteById(int id) {
		crRepo.deleteById(id);
	}
}
