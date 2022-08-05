package com.chainsys.invoice.dto;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.Product;

public class ProductInvoiceDetailsDTO {
	@Autowired
	private Product product;
	private Invoice invoice;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Invoice getInvoice() {
		return invoice;
	}
	public void setInvoice(Invoice invoice) {
		this.invoice = invoice;
	}
}
