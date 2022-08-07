package com.chainsys.invoice.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="Invoice_Details")
public class InvoiceDetails {
	@Id
	@Column(name="INVOICE_NUMBER")
	@NotEmpty(message = "*Please enter value")
	private String invoiceNumber;
	@Column(name="PRODUCT_ID")
	@Min(value = 0,message="*value should be greater than 0")
	private int productId;
	@Column(name="QUANTITY")
	@Min(value = 0,message="*value should be greater than 0")
	private int quantity;
	@Column(name="PRICE")
	@Min(value = 0 , message="*Price is not valid")
    @Max(value = 5000000, message="*Price is not valid")
	private float price;
	@Column(name="GST")
	@Min(value = 0 , message="*Price is not valid")
    @Max(value = 50000, message="*Price is not valid")
	private int gst;
	@Column(name="AMOUNT")
	@Min(value = 0 , message="*Price is not valid")
    @Max(value = 5000000, message="*Price is not valid")
	private float amount;
	
    @OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="INVOICE_NUMBER",nullable=false,insertable=false,updatable=false)
	private Invoice invoicedetail;  
	
	public Invoice getInvoicedetail() {
		return invoicedetail;
	}
	public void setInvoicedetail(Invoice invoicedetail) {
		this.invoicedetail = invoicedetail;
	}
	
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
