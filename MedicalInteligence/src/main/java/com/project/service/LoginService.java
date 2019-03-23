package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.LoginDAO;
import com.project.model.LoginVO;

@Service
public class LoginService {
	@Autowired
	LoginDAO loginDAO;
	
	
	@Transactional
	public List searchLogin(String userName)
	{
		List ls=this.loginDAO.searchLogin(userName);
		return ls;
	}

	@Transactional
	public void insertLogin(LoginVO loginVO) {
		
		this.loginDAO.insertLogin(loginVO);
	}
	
	

}
