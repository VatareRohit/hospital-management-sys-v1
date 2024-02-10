package com.springboot.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.springboot.web.bean.MedicineRecipt;

public interface MedicineReciptRepository extends JpaRepository<MedicineRecipt, Integer> {
	@Query("select a from MedicineRecipt a where appointId =:appointId")
    public List<MedicineRecipt> findMedicineByAppointId (int appointId); 


}
