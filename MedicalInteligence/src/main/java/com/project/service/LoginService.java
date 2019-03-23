package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.LoginDAO;

@Service
public class LoginService {
	@Autowired
	LoginDAO loginDAO;
	
	
	@Transactional
	public List searchLogin(String userName)
	{
		List ls=loginDAO.searchLogin(userName);
		return ls;
	}
	
	

}
