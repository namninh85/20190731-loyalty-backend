package com.nin.sfdc.model;
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
	private long ContactId;
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String lang;
	private Integer totalVoucher;
	private Integer totalPoint;
	private Integer totalOffer;
	private Boolean isActive = true;
	private String interestedFields;
	private String address;
	private String avartarImg;
	private String bannerHeaderImg;
	private String qrcodeImg;
	private Date dob;

	
	public Contact() {
	}

	public Contact(int ContactId) {
		this.ContactId = ContactId;
	}

	public Contact(int ContactId, String firstName, String lastName, String email, String phone, String lang,
			Integer totalVoucher, Boolean isActive, String interestedFields, String address,
			String avartarImg, String bannerHeaderImg, String qrcodeImg) {
		this.ContactId = ContactId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.lang = lang;
		this.totalVoucher = totalVoucher;
		this.isActive = isActive;
		
		this.interestedFields = interestedFields;
		this.address = address;
		this.avartarImg = avartarImg;
		this.bannerHeaderImg = bannerHeaderImg;
		this.qrcodeImg = qrcodeImg;

		
	}

	public long getContactId() {
		return this.ContactId;
	}

	public void setContactId(long ContactId) {
		this.ContactId = ContactId;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLang() {
		return this.lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public Integer getTotalVoucher() {
		if(this.totalVoucher == null) {
			return 0;
		}
		return this.totalVoucher;
	}

	public void setTotalVoucher(Integer totalVoucher) {
		this.totalVoucher = totalVoucher;
	}
	
	public Integer getTotalPoint() {
		if(this.totalPoint == null) {
			return 0;
		}
		return this.totalPoint;
	}

	public void setTotalPoint(Integer totalPoint) {
		this.totalPoint = totalPoint;
	}

	public Integer getTotalOffer() {
		if(this.totalOffer == null) {
			return 0;
		}
		return totalOffer;
	}

	public void setTotalOffer(Integer totalOffer) {
		this.totalOffer = totalOffer;
	}

	

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public String getInterestedFields() {
		return this.interestedFields;
	}

	public void setInterestedFields(String interestedFields) {
		this.interestedFields = interestedFields;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAvartarImg() {
		return this.avartarImg;
	}

	public void setAvartarImg(String avartarImg) {
		this.avartarImg = avartarImg;
	}

	public String getBannerHeaderImg() {
		return this.bannerHeaderImg;
	}

	public void setBannerHeaderImg(String bannerHeaderImg) {
		this.bannerHeaderImg = bannerHeaderImg;
	}

	public String getQrcodeImg() {
		return this.qrcodeImg;
	}

	public void setQrcodeImg(String qrcodeImg) {
		this.qrcodeImg = qrcodeImg;
	}


	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}
	
	
}