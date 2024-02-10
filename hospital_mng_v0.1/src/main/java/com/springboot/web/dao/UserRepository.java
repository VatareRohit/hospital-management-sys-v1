package com.springboot.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.web.bean.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	User findByEmail(String email);
	

}
