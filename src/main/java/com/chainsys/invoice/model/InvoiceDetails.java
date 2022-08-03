package com.chainsys.invoice.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Invoice_Details")
public class InvoiceDetails {
	@Id
	@Column(name="INVOICE_NUMBER")
	private String invoiceNumber;
	@Column(name="PRODUCT_ID")
	private int productId;
	@Column(name="QUANTITY")
	private int quantity;
	@Column(name="PRICE")
	private float price;
	@Column(name="GST")
	private int gst;
	@Column(name="AMOUNT")
	private float amount;
	public String getInvoiceNumber() {
		return invoiceNumber;
	}
	public void setInvoiceNumber(String invoiceNumber) {
		this.invoiceNumber = invoiceNumber;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getGst() {
		return gst;
	}
	public void setGst(int gst) {
		this.gst = gst;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	
}
