package com.project.DAO;

import java.util.List;

import com.project.model.LoginVO;

public interface LoginDAO {

	
	public List searchLogin(String userName);

	public void insertLogin(LoginVO loginVO);
}
