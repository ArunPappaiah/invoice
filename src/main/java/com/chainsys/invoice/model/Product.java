package com.chainsys.invoice.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Product")
public class Product {
	@Id
	@Column(name="PRODUCT_ID")
	int productId;
	@Column(name="PRODUCT_NAME")
	String productName;
	@Column(name="CATEGORIES")
	String categories;
	@Column(name="PRICE")
	float price;
	@Column(name="GST_RATE")
	float gstRate;
	@Column(name="DESCRIPTIONS")
	String descriptions;
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