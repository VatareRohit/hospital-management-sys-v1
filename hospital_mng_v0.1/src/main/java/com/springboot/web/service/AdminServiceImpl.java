package com.springboot.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.web.bean.User;
import com.springboot.web.dao.UserDao;
import com.springboot.web.dao.UserRepository;
import com.springboot.web.dto.LoginDto;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private UserDao userDao;
	@Autowired
	private UserRepository userRepo;

	@Override
	public User addUser(User user) {
		userDao.save(user);
		return user;
	}

	@Override
	public List<User> allUser() {
		// TODO Auto-generated method stub
		return userRepo.findAll();
	}

	@Override
	public void deleteUser(int userid) {
		// TODO Auto-generated method stub
		 userRepo.deleteById(userid);
		 
	}

	@SuppressWarnings("deprecation")
	@Override
	public User getUser(int id) {
		// TODO Auto-generated method stub
		return userRepo.getById(id);
	}

	@Override
	public User validateUser(LoginDto loginUser) {
		// TODO Auto-generated method stub
		return null;
	}
     // reception validate code 
	@Override
	public User validateReception(LoginDto loginUser) {
		User user=userRepo.findByEmail(loginUser.getEmail());
		if(user !=null) {
			if(loginUser.getEmail().equals(user.getEmail()) && loginUser.getPassword().equals(user.getPassword()) && user.getEmptype().equals("reception") ) {
				return user;
			}
		}
		
		return null;
	}

	@Override
	public User validateDoctor(LoginDto loginUser) {
		User user=userRepo.findByEmail(loginUser.getEmail());
		if(user !=null) {
			if(loginUser.getEmail().equals(user.getEmail()) && loginUser.getPassword().equals(user.getPassword()) && user.getEmptype().equals("doctor") ) {
				return user;
			}
		}
		return null;
	}

	


}
