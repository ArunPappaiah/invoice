package com.chainsys.invoice.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Invoice_Details")
public class InvoiceDetails {
	@Id
	@Column(name="INVOICE_NUMBER")
	String invoice_number;
	int product_id;
	int quantity;
	float price;
	int gst;
	float amount;
	/**
	 * @return the invoice_number
	 */
	public String getInvoice_number() {
		return invoice_number;
	}
	/**
	 * @param invoice_number the invoice_number to set
	 */
	public void setInvoice_number(String invoice_number) {
		this.invoice_number = invoice_number;
	}
	/**
	 * @return the product_id
	 */
	public int getProduct_id() {
		return product_id;
	}
	/**
	 * @param product_id the product_id to set
	 */
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}
	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	/**
	 * @return the price
	 */
	public float getPrice() {
		return price;
	}
	/**
	 * @param price the price to set
	 */
	public void setPrice(float price) {
		this.price = price;
	}
	/**
	 * @return the gst
	 */
	public int getGst() {
		return gst;
	}
	/**
	 * @param gst the gst to set
	 */
	public void setGst(int gst) {
		this.gst = gst;
	}
	/**
	 * @return the amount
	 */
	public float getAmount() {
		return amount;
	}
	/**
	 * @param amount the amount to set
	 */
	public void setAmount(float amount) {
		this.amount = amount;
	}
}
