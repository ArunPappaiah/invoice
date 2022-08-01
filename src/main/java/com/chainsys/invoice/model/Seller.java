package com.chainsys.invoice.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Seller")
public class Seller {
	@Id
	@Column(name="COMPANY_ID")
	int companyId;
	@Column(name="COMPANY_NAME")
	String companyName;
	@Column(name="EMAIL_ID")
	String emailId;
	@Column(name="GST_REGISTRATION_NO")
	String gstRegistrationNo;
	@Column(name="COMPANY_ADDRESS")
	String companyAddress;
	@Column(name="CONTACT_NUMBER")
	long contactNumber;
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getGstRegistrationNo() {
		return gstRegistrationNo;
	}
	public void setGstRegistrationNo(String gstRegistrationNo) {
		this.gstRegistrationNo = gstRegistrationNo;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	public long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}
	
}
