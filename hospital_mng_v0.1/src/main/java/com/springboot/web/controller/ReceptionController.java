package com.springboot.web.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.springboot.web.bean.Appointment;
import com.springboot.web.bean.MedicineRecipt;
import com.springboot.web.bean.Patient;
import com.springboot.web.bean.User;
import com.springboot.web.dto.LoginDto;
import com.springboot.web.service.AdminService;
import com.springboot.web.service.MedicineReciptService;
import com.springboot.web.service.PatientService;

@Controller
@RequestMapping("/reception")
public class ReceptionController {
	@Autowired
	AdminService adminservice;
	@Autowired
	PatientService patientservice;
	@Autowired
	MedicineReciptService medicineService;

	public ReceptionController() {
		System.out.println("reception control.....");
	}
	@GetMapping("/login")
	public String showLogin(Model model) {
		System.out.println("show login run..");
		return "login" ;
	}
	@PostMapping("/validate")
	public String validateUser( @RequestParam("email") String email, 
			@RequestParam("password") String password, Model model){
		LoginDto loginDto = new LoginDto();
		loginDto.setEmail(email);
		loginDto.setPassword(password);
		if(loginDto.getPassword().equals(null)) {
			return "login";
			}
		else {
			User user1=new User();
		 user1= this.adminservice.validateReception(loginDto);
		 if(user1 !=null) {
			 return "receptionHome";
		 }
		 
		 return "login"; 
		 }
	
	}
	@GetMapping("/home")
	public String showReceptionHome() {
		System.out.println("reception home run...");
		return "receptionHome";
	}
	@GetMapping("/newpatient")
	public String showNewPatient(Model model) {
		System.out.println("new patient show...");
		return "newpatient";
	}
	@PostMapping("/savepatient")
	public String addPatient(@RequestParam String firstName,
            @RequestParam String middleName,
            @RequestParam String lastName,
            @RequestParam String birthdate,
            @RequestParam String gender,
            @RequestParam String address,
            @RequestParam String email,
            @RequestParam String contactNumber,
            @RequestParam String bloodGroup,
            @RequestParam String comments) {
		System.out.println("add patient run");
		Date d1= Date.valueOf(birthdate);
		Patient pa = new Patient();
		pa.setFirstName(firstName);
		pa.setMiddleName(middleName);
		pa.setLastName(lastName);
		pa.setBirthdate(d1);
		pa.setGender(gender);
		pa.setAddress(address);
		pa.setEmail(email);
		pa.setContactNumber(0);
		pa.setBloodType(bloodGroup);
		pa.setNotes(comments);
		this.patientservice.addPatient(pa);
		
		return"receptionHome";
	}
	@GetMapping("/showallpatient")
    public String showAllPatient(Model model) {
	 System.out.println("show all patient");
	 List<Patient> patientList = this.patientservice.allPatiEnt();
        model.addAttribute("userList", patientList);
        return "allPatient";
    }
	
	@PostMapping("/removepatient")
    public String  deletePatientById(@RequestParam("userid") String userid1, Model model) {
    	int userid =Integer.parseInt(userid1);
    	System.out.println("delete patient ..."+ userid);
    	
         patientservice.deletePatient(userid);
        return "allPatient";
    }
	@PostMapping("/bookappo")
	public String bookAppointment(@RequestParam("paid") String paid, Model model) {
		System.out.println("book appointment call..."+paid);
		model.addAttribute("patientId",paid);
		return "bookappointment";
	}
	@PostMapping("/patientHistory")
	public String patientAppoHistory(@RequestParam("paid") String paid, Model model) {
		System.out.println("patient Appointment history call by patient id ....");
		model.addAttribute("patientId",paid);
		List<Appointment> appointList=this.patientservice.patientAppoHistory(Integer.parseInt(paid));
		model.addAttribute("appList",appointList);
		Patient pa=this.patientservice.findPatientById(Integer.parseInt(paid));
		model.addAttribute("pa", pa);
		return "patientProfile";
	}
	@PostMapping("/saveappo")
	public String saveAppointment(@RequestParam(name = "patientId") int patientId,
            @RequestParam(name = "appointmentType") String appointmentType,
            @RequestParam(name = "doctorSpecialty", required = false) String doctorSpecialty,
            @RequestParam(name = "preferredDate") String preferredDate,
            @RequestParam(name = "preferredTime") String preferredTime,
            Model model ) {
		System.out.println("save appointment call...."+patientId+" appo no "+appointmentType);
		Appointment ap= new Appointment();
		Date d1= Date.valueOf(preferredDate);
		ap.setPatientid(patientId);
		ap.setAppointmentType(appointmentType);
		ap.setDoctorSpecialty(doctorSpecialty);
		ap.setDoctorName("na");
		ap.setPreferredDate(d1);
		ap.setPreferredTime(preferredTime);
		ap.setMadicines("na");
		this.patientservice.addAppointment(ap);
		return "receptionHome";
	}
	@GetMapping("/historyappo")
	public String appoHistory(Model model) {
		System.out.println("appointment history show..");
		List<Appointment> appolist=this.patientservice.appoHistory();
		 model.addAttribute("appoList", appolist);
		return "appointHistory";
	}
	@GetMapping("/showpre")
	public String showPrescription(@RequestParam("paid") String paid,@RequestParam("appoid")String appoid, Model model) {
		System.out.println("show med prescription"+paid+"  appo:"+appoid);
		Patient p1=patientservice.findPatientById(Integer.parseInt(paid));
		Appointment appo=patientservice.findAppoByAppoId(Integer.parseInt(appoid));
		List<MedicineRecipt> medList=this.medicineService.allMedicine(Integer.parseInt(appoid));
		model.addAttribute("p1",p1);
		model.addAttribute("appo",appo);
		model.addAttribute("medList",medList);
		
		return "medprescription";
		
	}
	
	

    
}
