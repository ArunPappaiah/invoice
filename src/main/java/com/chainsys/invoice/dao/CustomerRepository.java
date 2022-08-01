package com.chainsys.invoice.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.invoice.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer>{
	Customer findById(int id);

	Customer save(Customer cr);

	void deleteById(int id);

	List<Customer> findAll();
}
