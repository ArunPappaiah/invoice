package com.chainsys.invoice.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.invoice.model.Seller;

public interface SellerRepository extends CrudRepository<Seller, Integer> {
	Seller findById(int id);

	Seller save(Seller sr);

	void deleteById(int id);

	List<Seller> findAll();
}
