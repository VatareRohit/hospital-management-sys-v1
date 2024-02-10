package com.springboot.web.service;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.web.bean.Appointment;
import com.springboot.web.bean.Patient;
import com.springboot.web.bean.User;
import com.springboot.web.dao.AppointmentDao;
import com.springboot.web.dao.AppointmentRepository;
import com.springboot.web.dao.PatientDao;
import com.springboot.web.dao.PatientRepository;
import com.springboot.web.dao.UserRepository;
@Service
public class PatientServiceImpl implements PatientService {
	@Autowired
	private PatientDao patientDao;
	@Autowired
	private PatientRepository patientRepo;
	@Autowired
	private AppointmentDao appoDao;
	@Autowired
	private AppointmentRepository appoRepo;
	@Autowired
	private UserRepository userRepo;


	public PatientServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Patient addPatient(Patient pa) {
		patientDao.save(pa);
		return pa;
	}

	@Override
	public List<Patient> allPatiEnt() {
		// TODO Auto-generated method stub
		return patientRepo.findAll();
	}

	@Override
	public void deletePatient(int id) {
		
		patientRepo.deleteById(id);
	}

	@Override
	public Appointment addAppointment(Appointment appo) {
		appoDao.save(appo);
		return appo;
	}

	@Override
	public List<Appointment> appoHistory() {
		// TODO Auto-generated method stub
		return appoRepo.findAll();
	}

	@Override
	public List<Appointment> patientAppoHistory(int patientid) {
		// TODO Auto-generated method stub
		return appoRepo.findAppointmentHistoryByPatientID(patientid);
		
	}

	@Override
	public Patient findPatientById(int patientid) {
		// TODO Auto-generated method stub
		
		return patientRepo.findPatientByID(patientid);
	}

	@Override
	public Appointment findAppoByAppoId(int appoid) {
		
		return appoRepo.findAppointByAppointID(appoid) ;
	}

	@Override
	public void upadatedrName(int appoid, int uid) {
		@SuppressWarnings("deprecation")
		User u=userRepo.getById(uid);
		String drname=u.getFirstName()+u.getLastName()+"_"+u.getUserid();
		this.appoRepo.upadatedrName(appoid, drname);
		
	}

	



	

}
