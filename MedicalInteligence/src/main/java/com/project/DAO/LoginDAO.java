package com.project.DAO;

import java.util.List;

import com.project.model.LoginVO;

public interface LoginDAO {

	
	public List searchLogin(String userName);

	public void insertLogin(LoginVO loginVO);
	
	public List searchstep1(LoginVO loginVO);
	
	public void updatePassword(LoginVO loginVO);
	public void updateLogin(LoginVO loginVO);
}
