package com.chainsys.invoice.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="Invoice")
public class Invoice {
	@Id
	@Column(name="INVOICE_NUMBER")
	@NotEmpty(message = "*Please enter value")
	private String invoiceNumber;
	@Column(name="INVOICE_DATE")
	private Date invoiceDate;
	@Column(name="CUSTOMER_ID")
	@Min(value = 0,message="*value should be greater than 0")
	private int customerId;
	@Column(name="PRODUCT_ID")
	@Min(value = 0,message="*value should be greater than 0")
	private int productId;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	@Column(name="TRANSPORTATION_CHARGES")
	@Min(value = 0, message="*Value should be in positive numbers")
	private float transportationCharges;
	@Column(name="TOTAL_AMOUNT")
	@Min(value = 0, message="*Value should be in positive numbers")
	private float totalAmount;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="CUSTOMER_ID",nullable=false,insertable=false,updatable=false)
	private Customer customerdetail;
	
	 @OneToOne(mappedBy="invoicedetail",fetch=FetchType.LAZY)
	private InvoiceDetails invoiceDetail;  
	
	public InvoiceDetails getInvoiceDetail() {
		return invoiceDetail;
	}
	public void setInvoiceDetail(InvoiceDetails invoiceDetail) {
		this.invoiceDetail = invoiceDetail;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="PRODUCT_ID",nullable=false,insertable=false,updatable=false)
	private Product productdetail;
	
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
