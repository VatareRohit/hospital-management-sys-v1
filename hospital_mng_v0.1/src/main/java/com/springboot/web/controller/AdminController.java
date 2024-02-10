package com.springboot.web.controller;



import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.springboot.web.bean.User;
import com.springboot.web.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	

	public AdminController() {
		System.out.println("admin controller runing......");
	}
	@GetMapping("/")
	public String userRegistration() {
		System.out.println("admin controller registration ..");
		return "userReg";
	}
	@GetMapping("/login")
	public String showLogin(Model model) {
		System.out.println("show login run..");
		return "adminLogin" ;
	}
	
	@PostMapping("/adminvalidate")
	public String validateUser( @RequestParam("email") String email, 
			@RequestParam("password") String password, Model model){
		
		if(email.equals("rohit@gmail.com") && password.equalsIgnoreCase("rohit1")) {
			System.out.println("admin validate...");
			return "adminHome";
			
		}else {
			return "index";
		}
		
	}
	@GetMapping("/registershow")
	public String showUserRegistration(Model model) {
		System.out.println("show user reg......");
		return "userReg";
	}

   
	@PostMapping("/saveuser")
	public String addUser(@RequestParam("firstName") String firstName,
	                      @RequestParam("middleName") String middleName,
	                      @RequestParam("lastName") String lastName,
	                      @RequestParam("gender") String gender,
	                      @RequestParam("joindate") String joindate,
	                      @RequestParam("email") String email,
	                      @RequestParam("contactNumber") String contactNumber,
	                      @RequestParam("birthdate") String birthdate,
	                      @RequestParam("address") String address,
	                      @RequestParam("password") String password,
	                      @RequestParam("emptype") String emptype,
	                      @RequestParam(name = "doctorSpecialty", required = false) String doctorSpecialty) {
	    
	    // Create a User object and set its properties
	
		  Date d1 = Date.valueOf(joindate);
		  Date d2 = Date.valueOf(birthdate);
		long co=Long.parseLong(contactNumber);
		
	    User user = new User();
	    user.setFirstName(firstName);
	    user.setMiddleName(middleName);
	    user.setLastName(lastName);
	    user.setGender(gender);
	    user.setJoindate(d1);
	    user.setEmail(email);
	    user.setContactNumber(co);
	    user.setBirthdate(d2);
	    user.setAddress(address);
	    user.setPassword(password);
	    user.setEmptype(emptype);
	    user.setDoctorSpecialty(doctorSpecialty);

	    // Process the user object (e.g., save to the database, perform business logic)
	    System.out.println("adduser method run: " + user.getFirstName());
	    this.adminService.addUser(user);

	    return "success";
	}
	 @GetMapping("/showalluser")
	    public String showAllUsersForm(Model model) {
		 System.out.println("show user1");
		 List<User> userList = this.adminService.allUser();
	        model.addAttribute("userList", userList);
	        return "showAllUsers";
	    }

	    @PostMapping("/remove")
	    public String  deleteUserById(@RequestParam("userid") String userid1, Model model) {
	    	int userid =Integer.parseInt(userid1);
	    	System.out.println("delete user ..."+ userid);
	    	
	         adminService.deleteUser(userid);
	        return "showAllUsers";
	    }
	 

}
