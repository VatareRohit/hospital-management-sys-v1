package com.springboot.web.service;

import java.util.List;

import com.springboot.web.bean.User;
import com.springboot.web.dto.LoginDto;

public interface AdminService {
	public User addUser(User user );
	public List<User>allUser();
	public void deleteUser(int id) ;
	public User getUser(int id);
	public User validateUser(LoginDto loginUser);
	public User validateReception(LoginDto logindto);
	public User validateDoctor(LoginDto loginUser);
	

}
