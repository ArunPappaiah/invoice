package com.chainsys.invoice.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Invoice")
public class Invoice {
	@Id
	@Column(name="INVOICE_NUMBER")
	String invoiceNumber;
	@Column(name="INVOICE_DATE")
	Date invoiceDate;
	@Column(name="CUSTOMER_ID")
	int customerId;
	@Column(name="TRANSPORTATION_CHARGES")
	float transportationCharges;
	@Column(name="TOTAL_AMOUNT")
	float totalAmount;
	public String getInvoiceNumber() {
		return invoiceNumber;
	}
	public void setInvoiceNumber(String invoiceNumber) {
		this.invoiceNumber = invoiceNumber;
	}
	public Date getInvoiceDate() {
		return invoiceDate;
	}
	public void setInvoiceDate(Date invoiceDate) {
		this.invoiceDate = invoiceDate;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public float getTransportationCharges() {
		return transportationCharges;
	}
	public void setTransportationCharges(float transportationCharges) {
		this.transportationCharges = transportationCharges;
	}
	public float getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(float totalAmount) {
		this.totalAmount = totalAmount;
	}
	
}
