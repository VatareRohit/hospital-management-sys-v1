package com.springboot.web.service;

import java.util.List;

import com.springboot.web.bean.MedicineRecipt;
import com.springboot.web.bean.Patient;

public interface MedicineReciptService {
	public String saveMedicine(List<MedicineRecipt> medList);
	public List<MedicineRecipt>allMedicine(int appoid);
	public void deleteMedicineByID(int medId);

}
