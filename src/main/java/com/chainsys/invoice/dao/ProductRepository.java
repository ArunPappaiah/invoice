package com.chainsys.invoice.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.invoice.pojo.Product;
import com.chainsys.invoice.pojo.Seller;

public interface ProductRepository extends CrudRepository<Product, Integer>{
	Product findById(int id);

	Product save(Product sr);

	void deleteById(int id);

	List<Product> findAll();
}
