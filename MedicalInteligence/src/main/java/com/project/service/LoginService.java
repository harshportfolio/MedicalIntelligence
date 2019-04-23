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
	
	@Transactional
	public List searchstep1(LoginVO loginVO)
	{
		List ls = this.loginDAO.searchstep1(loginVO);
		return ls;
	}
	
	@Transactional
	public void updatePassword(LoginVO loginVO)
	{
		this.loginDAO.updatePassword(loginVO);
	}
	

	@Transactional
	public void updateLogin(LoginVO loginVO)
	{
		this.loginDAO.updateLogin(loginVO);
	}

}
