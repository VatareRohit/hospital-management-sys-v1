package com.springboot.web.service;

import java.util.List;
import java.util.Optional;

import com.springboot.web.bean.Appointment;
import com.springboot.web.bean.Patient;


public interface PatientService {
	public Patient addPatient(Patient pa );
	public List<Patient>allPatiEnt();
	public void deletePatient (int id) ;
	public Appointment addAppointment(Appointment appo);
	public List<Appointment> appoHistory();
	public List<Appointment> patientAppoHistory(int patientid);
	public Patient findPatientById(int patientid );
	public Appointment findAppoByAppoId(int appoid);
	public void upadatedrName(int appoid,int uid);

	

}
