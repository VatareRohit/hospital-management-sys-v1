package com.springboot.web.bean;


import java.sql.Date;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Access;
import jakarta.persistence.AccessType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "hsm45")
@Access(AccessType.FIELD)
public class User {
	@Id
    @GeneratedValue
	private int userid;
	@Column(name = "FistName")
	@Nonnull
	private String firstName;
	@Nonnull
	private String middleName;
	@Nonnull
	private String lastName;
	private String gender;
	private Date joindate;
	private String email;
	private long contactNumber;
	private Date birthdate;
	private String address;
	private String password;
	private String emptype;
	private String doctorSpecialty;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmptype() {
		return emptype;
	}
	public void setEmptype(String emptype) {
		this.emptype = emptype;
	}
	public String getDoctorSpecialty() {
		return doctorSpecialty;
	}
	public void setDoctorSpecialty(String doctorSpecialty) {
		this.doctorSpecialty = doctorSpecialty;
	}
	public User() {
		super();
	}
	public User(int userid, String firstName, String middleName, String lastName, String gender, Date joindate,
			String email, long contactNumber, Date birthdate, String address, String password, String emptype,
			String doctorSpecialty) {
		super();
		this.userid = userid;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.gender = gender;
		this.joindate = joindate;
		this.email = email;
		this.contactNumber = contactNumber;
		this.birthdate = birthdate;
		this.address = address;
		this.password = password;
		this.emptype = emptype;
		this.doctorSpecialty = doctorSpecialty;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName="
				+ lastName + ", gender=" + gender + ", joindate=" + joindate + ", email=" + email + ", contactNumber="
				+ contactNumber + ", birthdate=" + birthdate + ", address=" + address + ", password=" + password
				+ ", emptype=" + emptype + ", doctorSpecialty=" + doctorSpecialty + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	

	
}
