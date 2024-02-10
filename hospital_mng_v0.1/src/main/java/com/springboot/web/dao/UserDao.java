package com.springboot.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.web.bean.User;

public interface UserDao extends JpaRepository<User,Integer> {

}
