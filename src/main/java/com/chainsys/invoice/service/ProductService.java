package com.chainsys.invoice.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.invoice.dao.InvoiceRepository;
import com.chainsys.invoice.dao.ProductRepository;
import com.chainsys.invoice.dto.ProductInvoiceDetailsDTO;
import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.Product;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepo;
	
	@Autowired
	private InvoiceRepository invoiceRepo;
	
	public Product findById(int id) {
		return productRepo.findById(id);
	}
	
	public Product save(Product pr) {
		pr.setPrice(0);
		productRepo.save(pr);
		return productRepo.save(pr);
	}
	
	public List<Product> findAllProducts(){
		List<Product> prList = productRepo.findAll();
		return prList;
	}
	
	public void deleteById(int id) {
		productRepo.deleteById(id);
	}
	
	public ProductInvoiceDetailsDTO getProductAndInvoice(int id) {
		Product product = findById(id);
		ProductInvoiceDetailsDTO dto = new ProductInvoiceDetailsDTO();
		dto.setProduct(product);
		List<Invoice> invoiceList = invoiceRepo.findByProductId(id);
		Iterator<Invoice> iterator = invoiceList.iterator();
        while(iterator.hasNext()) {
        	dto.addproductAndInvoiceList((Invoice)iterator.next());
        }
		return dto;
	}
	
	 public List<Product> allProduct(){
		 return productRepo.findAll();
	 }
}
