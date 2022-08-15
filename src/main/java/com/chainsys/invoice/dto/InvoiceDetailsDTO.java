package com.chainsys.invoice.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;

public class InvoiceDetailsDTO {
	private Invoice invoice;
	private List<InvoiceDetails> invoiceList = new ArrayList<>();
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
	
	private String invoiceNumber;
	private Date invoiceDate;
	private int customerId;
	private int productId1;
	public int getProductId1() {
		return productId1;
	}
	public void setProductId1(int productId1) {
		this.productId1 = productId1;
	}
	private float transportationCharges;
	private float totalAmount;
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
	//---------------------------------------
	private String invoiceNumber1;
	private int productId;
	private int quantity;
	private float price;
	private int gst;
	private float amount;

	public String getInvoiceNumber1() {
		return invoiceNumber1;
	}
	public void setInvoiceNumber1(String invoiceNumber1) {
		this.invoiceNumber1 = invoiceNumber1;
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
