package com.springboot.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import com.springboot.web.bean.MedicineRecipt;

public interface MedicineReciptDao extends JpaRepository<MedicineRecipt, Integer>{


}
