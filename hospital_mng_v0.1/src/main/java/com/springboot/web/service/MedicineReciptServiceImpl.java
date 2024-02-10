package com.springboot.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.web.bean.MedicineRecipt;
import com.springboot.web.dao.MedicineReciptDao;
import com.springboot.web.dao.MedicineReciptRepository;

@Service
public class MedicineReciptServiceImpl implements MedicineReciptService{
	@Autowired
	private MedicineReciptDao medRecDao;
	@Autowired
	private MedicineReciptRepository medRecRepo;

	public MedicineReciptServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String saveMedicine(List<MedicineRecipt> medList) {
		for(MedicineRecipt med:medList) {
			medRecDao.save(med);
			System.out.println(med);
		}
		
		return "done";
	}

	@Override
	public List<MedicineRecipt> allMedicine(int appoid) {
		
		return this.medRecRepo.findMedicineByAppointId(appoid);
	}

	@Override
	public void deleteMedicineByID(int medId) {
		this.medRecRepo.deleteById(medId);
		
	}

}
