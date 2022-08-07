package com.chainsys.invoice.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="Product")
public class Product {
	@Id
	@Column(name="PRODUCT_ID")
	@Min(value = 0,message="*value should be greater than 0")
	private int productId;
	@Column(name="PRODUCT_NAME")
	@Size(max = 30, min = 2, message = "*Name length should be 2 to 30")
	@NotEmpty(message = "*Please enter product name")
	private String productName;
	@Column(name="CATEGORIES")
	@NotEmpty(message = "*Please select category")
	private String categories;
	@Column(name="PRICE")
	@Min(value = 0 , message="*Price is not valid")
    @Max(value = 5000000, message="*Price is not valid")
	private float price;
	@Column(name="GST_RATE")
	@Min(value = 0,message="*value should be greater than 0")
	private float gstRate;
	@Column(name="DESCRIPTIONS")
	@NotEmpty(message = "*Please enter description")
	private String descriptions;
	
//	@OneToOne(mappedBy="invoice",fetch=FetchType.LAZY)
/*	private Invoice invoice;
	
	public Invoice getInvoice() {
		return invoice;
	}
	public void setInvoice(Invoice invoice) {
		this.invoice = invoice;
	}  */
	
	@OneToMany(mappedBy="productdetail",fetch=FetchType.LAZY)
	private List<Invoice> invoice;
	
	
	public List<Invoice> getInvoice() {
		return invoice;
	}
	public void setInvoice(List<Invoice> invoice) {
		this.invoice = invoice;
	}
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getGstRate() {
		return gstRate;
	}
	public void setGstRate(float gstRate) {
		this.gstRate = gstRate;
	}
	public String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}
	
	
}
