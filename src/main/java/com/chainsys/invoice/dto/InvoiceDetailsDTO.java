package com.chainsys.invoice.dto;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.persistence.Column;
import javax.persistence.Id;

import com.chainsys.invoice.model.Invoice;
import com.chainsys.invoice.model.InvoiceDetails;

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
	
	/* private InvoiceDetails invoiceDetail;

	public InvoiceDetails getInvoiceDetail() {
		return invoiceDetail;
	}
	public void setInvoiceDetail(InvoiceDetails invoiceDetail) {
		this.invoiceDetail = invoiceDetail;
	}  */

	// ----------------------------
	
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
	// ----------------------------------
/*	private Customer customer;
	
	//-----------------------------------
	private int customerId1;
	private String customerName;
	private long phoneNumber;
	private String address;
	private String email;
	private String city;
	
	
	public int getCustomerId1() {
		return customerId1;
	}
	public void setCustomerId1(int customerId1) {
		this.customerId1 = customerId1;
	}
	public String getCustomerName() {
		return customerName;
	}
	
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	public long getPhoneNumber() {
		return phoneNumber;
	}
	
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	//--------------------------------
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	private List<Invoice> invoiceList1 = new ArrayList<Invoice>();
	public void addInvoice(Invoice invoice) {
		invoiceList1.add(invoice);
	}
	public List<Invoice> getInvoices(){
		return invoiceList1;
	}  */
}
