
package com.springboot.web.bean;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Access;
import jakarta.persistence.AccessType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name = "patient_4")
@Access(AccessType.FIELD)
public class Patient {
	
	    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "patient_id_column")
	    @SequenceGenerator(name = "patient_id_column", allocationSize = 100)
	    @Column(name = "patient_id_column")
	    @Id
	private int patientid;
	
	@Nonnull
	private String firstName;
	
	@Nonnull
	private String middleName;
	@Nonnull
	private String lastName;
	private Date birthdate;
	private String gender;
	private String address;
	private String email;
	private long contactNumber;
	private String bloodType;
	private String notes;
	

	public Patient() {
		// TODO Auto-generated constructor stub
	}
	


	
	public Patient(int patientid, String firstName, String middleName, String lastName, Date birthdate, String gender,
			String address, String email, long contactNumber, String bloodType, String notes) {
		super();
		this.patientid = patientid;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.birthdate = birthdate;
		this.gender = gender;
		this.address = address;
		this.email = email;
		this.contactNumber = contactNumber;
		this.bloodType = bloodType;
		this.notes = notes;
	}




	public int getPatientid() {
		return patientid;
	}

	public void setPatientid(int patientid) {
		this.patientid = patientid;
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

	public String getBloodType() {
		return bloodType;
	}

	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	@Override
	public String toString() {
		return "Patient [patientid=" + patientid + ", firstName=" + firstName + ", middleName=" + middleName
				+ ", lastName=" + lastName + ", birthdate=" + birthdate + ", gender=" + gender + ", address=" + address
				+ ", email=" + email + ", contactNumber=" + contactNumber + ", bloodType=" + bloodType + ", notes="
				+ notes + "]";
	}
	

	
	
	
	
	

}
