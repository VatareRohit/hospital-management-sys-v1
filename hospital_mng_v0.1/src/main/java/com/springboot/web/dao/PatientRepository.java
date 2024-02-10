package com.springboot.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springboot.web.bean.Appointment;
import com.springboot.web.bean.Patient;

public interface PatientRepository extends JpaRepository<Patient,Integer >{
	@Query("select a from Patient a where patientid=:paId")
	public Patient findPatientByID (int paId);
	

	

	

}
