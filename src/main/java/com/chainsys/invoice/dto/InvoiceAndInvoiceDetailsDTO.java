package com.chainsys.invoice.dto;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;

public class InvoiceAndInvoiceDetailsDTO {
	@Autowired
	private Optional<Invoice> invoice;
	private Optional<InvoiceDetails> invoiceDetails;
	public Optional<Invoice> getInvoice() {
		return invoice;
	}
	public void setInvoice(Optional<Invoice> invoice) {
		this.invoice = invoice;
	}
	public Optional<InvoiceDetails> getInvoiceDetails() {
		return invoiceDetails;
	}
	public void setInvoiceDetails(Optional<InvoiceDetails> invoiceDetails2) {
		this.invoiceDetails = invoiceDetails2;
	}
	
}
