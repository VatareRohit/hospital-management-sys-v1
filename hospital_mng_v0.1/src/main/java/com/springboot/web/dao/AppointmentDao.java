package com.springboot.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.web.bean.Appointment;

public interface AppointmentDao extends JpaRepository<Appointment, Integer> {
    
}
