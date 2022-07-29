package com.chainsys.invoice.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Invoice")
public class Invoice {
	@Id
	String invoice_number;
	Date invoice_date;
	int customer_id;
	float transportation_charges;
	float total_amount;
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
	 * @return the invoice_date
	 */
	public Date getInvoice_date() {
		return invoice_date;
	}
	/**
	 * @param invoice_date the invoice_date to set
	 */
	public void setInvoice_date(Date invoice_date) {
		this.invoice_date = invoice_date;
	}
	/**
	 * @return the customer_id
	 */
	public int getCustomer_id() {
		return customer_id;
	}
	/**
	 * @param customer_id the customer_id to set
	 */
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	/**
	 * @return the transportation_charges
	 */
	public float getTransportation_charges() {
		return transportation_charges;
	}
	/**
	 * @param transportation_charges the transportation_charges to set
	 */
	public void setTransportation_charges(float transportation_charges) {
		this.transportation_charges = transportation_charges;
	}
	/**
	 * @return the total_amount
	 */
	public float getTotal_amount() {
		return total_amount;
	}
	/**
	 * @param total_amount the total_amount to set
	 */
	public void setTotal_amount(float total_amount) {
		this.total_amount = total_amount;
	}
	
}
