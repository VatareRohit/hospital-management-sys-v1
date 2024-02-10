package com.springboot.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.web.bean.Appointment;
import com.springboot.web.bean.MedicineRecipt;
import com.springboot.web.bean.Patient;
import com.springboot.web.bean.User;
import com.springboot.web.dto.LoginDto;
import com.springboot.web.service.AdminService;
import com.springboot.web.service.MedicineReciptService;
import com.springboot.web.service.PatientService;

@Controller
@RequestMapping("/doctor")
public class DoctorController {
	@Autowired
	AdminService adminservice;
	@Autowired
	PatientService patientservice;
	@Autowired
	MedicineReciptService medicineService;
      User temp;

	public DoctorController() {
		System.out.println("doctor controller run.......");
	}
	@GetMapping("/login")
	public String showLogin(Model model) {
		System.out.println("show doctor login run..");
		return "loginDr" ;
	}
	@PostMapping("/validate")
	public String validateUser( @RequestParam("email") String email, 
			@RequestParam("password") String password, Model model){
		LoginDto loginDto = new LoginDto();
		loginDto.setEmail(email);
		System.out.println(email);
		loginDto.setPassword(password);
		if(loginDto.getPassword().equals(null)) {
			return "loginDr";
			}
		else {
			User user1=new User();
			temp=user1;
		 user1= this.adminservice.validateDoctor(loginDto);
		 if(user1 !=null) {
			 model.addAttribute("u1",user1);
			 return "doctorHome";
		 }
		 
		 return "loginDr"; 
		 }
	
	}
	@GetMapping("/home")
	public String showDoctorHome() {
		System.out.println("doctor home run...");
		return "doctornHome";
	}
	@GetMapping("/allpatient/{uid}")
    public String showAllPatient( @PathVariable String uid, Model model) {
		
	 System.out.println(uid+"show all patien- "+uid);
	 List<Patient> patientList = this.patientservice.allPatiEnt();
        model.addAttribute("userList", patientList);
        List<Appointment> appolist=this.patientservice.appoHistory();
        model.addAttribute("appoList", appolist);
        User druser=this.adminservice.getUser(Integer.parseInt(uid));
        model.addAttribute("user",druser);
       
        return "drPatientCheck";
    }
	@PostMapping("/addmed")
	public String addMedicine(@RequestParam("appoid") String appoid,@RequestParam("uid") String uid, Model model) {
		System.out.println("add medicine call...appo:"+appoid+" .. uid"+uid);
		this.patientservice.upadatedrName(Integer.parseInt(appoid), Integer.parseInt(uid));
		model.addAttribute("appoid",appoid);
		
		return "addmed";
	}
	@PostMapping("/showmed")
	public String showMedicine(@RequestParam("appoid") String appoid, Model model) {
		System.out.println("add medicine call..."+appoid);
		model.addAttribute("appoid",appoid);
		List<MedicineRecipt> medList=this.medicineService.allMedicine(Integer.parseInt(appoid));
		model.addAttribute("medList",medList);
		return "showmed";
	}
	@PostMapping("/medicinesave")
	public String saveMedicine(@RequestParam("name")List<String> medname,
			@RequestParam("dosage")List<String> medDosage,
			@RequestParam("time")List<String> medTime,
			@RequestParam("qty")List<String> medQty,
			@RequestParam("note")List<String> medNote,
			@RequestParam("appoid")String appoid,Model model){
		
		List<MedicineRecipt> medList =new ArrayList<>()	;
		for(int i=0;i< medname.size();i++) {
			MedicineRecipt md=new MedicineRecipt();
			md.setName(medname.get(i));
			md.setDosage(Integer.parseInt(medDosage.get(i)));
			md.setTime(medTime.get(i));
			md.setQty(Double.parseDouble(medQty.get(i)));
			md.setNote(medNote.get(i));
			md.setAppointId(Integer.parseInt(appoid));
			md.setPrice(0);
			
			md.setTotPrice(0);
			medList.add(md);
			md=null;
		}
		//medicine_13 (,size,time,tot_price,medicine_id_col)
		System.out.println("medicine save run....."+medList);
		String s1=this.medicineService.saveMedicine(medList);
		System.out.println(s1+"-------- med list");
		
		
		return"medicinesave";
	}
	@PostMapping("/removemed")
	public String removeMedicine (@RequestParam("appoid") String appoid, Model model) {
		model.addAttribute("appoid",appoid);
		List<MedicineRecipt> medList=this.medicineService.allMedicine(Integer.parseInt(appoid));
		model.addAttribute("medList",medList);
		
		System.out.println("   removeMedicine  runing................."+appoid);

		return "removeMed";
	}
	@PostMapping("/deletemed")
	public String deleteMedicine(@RequestParam("medid") String medid, Model model) {
		System.out.println("medicine delete sucessfully   :::;"+medid);
		this.medicineService.deleteMedicineByID(Integer.parseInt(medid));
		return"drPatientCheck";
	}

}
