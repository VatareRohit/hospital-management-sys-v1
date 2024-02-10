package com.springboot.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.springboot.web.bean.Appointment;
import com.springboot.web.bean.Patient;

import jakarta.transaction.Transactional;



public interface AppointmentRepository extends JpaRepository<Appointment, Integer>{
	@Query("select a from Appointment a where patientid =:patientid")
    public List<Appointment> findAppointmentHistoryByPatientID (int patientid); 
	@Query("select a from Appointment a where appointId=:appoid")
	public Appointment findAppointByAppointID (int appoid);
	@Modifying
	@Transactional
	 @Query("UPDATE Appointment a SET a.doctorName = :drname WHERE a.appointId = :appoid")
	public void upadatedrName(@Param("appoid") int appoid, @Param("drname") String drname);

}
