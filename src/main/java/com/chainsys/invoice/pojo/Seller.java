package com.chainsys.invoice.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Seller")
public class Seller {
	@Id
	int company_id;
	String company_name;
	String email_Id;
	String gst_registration_no;
	String company_address;
	long contact_number;
	/**
	 * @return the company_id
	 */
	public int getCompany_id() {
		return company_id;
	}
	/**
	 * @param company_id the company_id to set
	 */
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	/**
	 * @return the company_name
	 */
	public String getCompany_name() {
		return company_name;
	}
	/**
	 * @param company_name the company_name to set
	 */
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	/**
	 * @return the email_Id
	 */
	public String getEmail_Id() {
		return email_Id;
	}
	/**
	 * @param email_Id the email_Id to set
	 */
	public void setEmail_Id(String email_Id) {
		this.email_Id = email_Id;
	}
	/**
	 * @return the gst_registration_no
	 */
	public String getGst_registration_no() {
		return gst_registration_no;
	}
	/**
	 * @param gst_registration_no the gst_registration_no to set
	 */
	public void setGst_registration_no(String gst_registration_no) {
		this.gst_registration_no = gst_registration_no;
	}
	/**
	 * @return the company_address
	 */
	public String getCompany_address() {
		return company_address;
	}
	/**
	 * @param company_address the company_address to set
	 */
	public void setCompany_address(String company_address) {
		this.company_address = company_address;
	}
	/**
	 * @return the contact_number
	 */
	public long getContact_number() {
		return contact_number;
	}
	/**
	 * @param contact_number the contact_number to set
	 */
	public void setContact_number(long contact_number) {
		this.contact_number = contact_number;
	}
	
}
