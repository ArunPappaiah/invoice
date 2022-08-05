package com.chainsys.invoice.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.invoice.model.Customer;
import com.chainsys.invoice.model.Invoice;

public class CustomerInvoiceDetailsDTO {
	@Autowired
	private Customer customer;
	private List<Invoice> invoiceList = new ArrayList<Invoice>();
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public List<Invoice> getInvoiceList() {
		return invoiceList;
	}
	public void addcustomerAndInvoiceList(Invoice invoice) {
		invoiceList.add(invoice);
	}
	
}
