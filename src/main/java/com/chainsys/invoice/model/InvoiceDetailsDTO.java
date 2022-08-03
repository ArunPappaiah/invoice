package com.chainsys.invoice.model;

import java.util.ArrayList;
import java.util.List;

public class InvoiceDetailsDTO {
	private Invoice invoice;
	private List<InvoiceDetails> invoiceList = new ArrayList<InvoiceDetails>();
	public Invoice getInvoice() {
		return invoice;
	}
	public void setInvoice(Invoice invoice) {
		this.invoice = invoice;
	}
	public void addInvoiceDetails(InvoiceDetails invoiceDatails) {
		invoiceList.add(invoiceDatails);
	}
	public List<InvoiceDetails> getInvoiceDetails(){
		return invoiceList;
	}
}
