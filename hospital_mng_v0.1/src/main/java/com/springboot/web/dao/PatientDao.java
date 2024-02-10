package com.springboot.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.web.bean.Patient;

public interface PatientDao extends JpaRepository<Patient, Integer> {

}
