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
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name = "appointment_13")
@Access(AccessType.FIELD)
public class Appointment {
	
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "appoint_id_col")
    @SequenceGenerator(name = "appoint_id_col", allocationSize = 100)
    @Column(name = "appoint_id_col")
	private int appointId;
	@Nonnull
	private int patientid;
	private String appointmentType;
	private String doctorSpecialty;
    private String doctorName;
    private Date preferredDate;
    private String preferredTime;
	private String madicines;
	

	public Appointment() {
		// TODO Auto-generated constructor stub
	}
	

	public Appointment(int appointId, int patientid, String appointmentType, String doctorSpecialty, String doctorName,
			Date preferredDate, String preferredTime, String madicines) {
		super();
		this.appointId = appointId;
		this.patientid = patientid;
		this.appointmentType = appointmentType;
		this.doctorSpecialty = doctorSpecialty;
		this.doctorName = doctorName;
		this.preferredDate = preferredDate;
		this.preferredTime = preferredTime;
		this.madicines = madicines;
	}


	public int getAppointId() {
		return appointId;
	}

	public void setAppointId(int appointId) {
		this.appointId = appointId;
	}

	public int getPatientid() {
		return patientid;
	}

	public void setPatientid(int patientid) {
		this.patientid = patientid;
	}

	public String getAppointmentType() {
		return appointmentType;
	}

	public void setAppointmentType(String appointmentType) {
		this.appointmentType = appointmentType;
	}

	public String getDoctorSpecialty() {
		return doctorSpecialty;
	}

	public void setDoctorSpecialty(String doctorSpecialty) {
		this.doctorSpecialty = doctorSpecialty;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public Date getPreferredDate() {
		return preferredDate;
	}

	public void setPreferredDate(Date preferredDate) {
		this.preferredDate = preferredDate;
	}

	public String getPreferredTime() {
		return preferredTime;
	}

	public void setPreferredTime(String preferredTime) {
		this.preferredTime = preferredTime;
	}

	public String getMadicines() {
		return madicines;
	}

	public void setMadicines(String madicines) {
		this.madicines = madicines;
	}

	@Override
	public String toString() {
		return "Appointment [appointId=" + appointId + ", patientid=" + patientid + ", appointmentType="
				+ appointmentType + ", doctorSpecialty=" + doctorSpecialty + ", doctorName=" + doctorName
				+ ", preferredDate=" + preferredDate + ", preferredTime=" + preferredTime + ", madicines=" + madicines
				+ "]";
	}
	
	

	
	

}
