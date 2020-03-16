package com.nin.model;
// Generated May 28, 2019 6:18:43 AM by Hibernate Tools 5.4.2.Final

import javax.persistence.*;

import java.util.Date;


@Entity
@Table(name = "contact", schema="salesforce")
public class Contact implements java.io.Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8963700376471819016L;

	@Id
	@Column(name = "id")
	private long customerId ;
	@Column(name = "firstname")
	private String firstName;
	@Column(name = "lastname")
	private String lastName;
	private String phone;
	private String email;
	@Column(name = "birthday")
	private Date dob;
	@Column(name = "otherstreet")
	private String address;
	@Column(name = "qr_code_link__c")
	private String qrcodeImg;
		
	public Contact() {
	}

	public Contact(int id) {
		this.customerId = id;
	}

	public long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getQrcodeImg() {
		return qrcodeImg;
	}

	public void setQrcodeImg(String qrcodeImg) {
		this.qrcodeImg = qrcodeImg;
	}
	
	
}