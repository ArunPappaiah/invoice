package com.chainsys.invoice.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.Product;

public class ProductInvoiceDetailsDTO {
	@Autowired
	private Product product;
	private List<Invoice> invoiceList = new ArrayList<Invoice>();
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public List<Invoice> getInvoiceList() {
		return invoiceList;
	}
	public void addproductAndInvoiceList(Invoice invoice) {
		invoiceList.add(invoice);
	}
}
