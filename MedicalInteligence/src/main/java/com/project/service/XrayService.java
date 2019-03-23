package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.XrayDAO;
import com.project.model.XrayVO;

@Service
public class XrayService {
	@Autowired
	XrayDAO xrayDAO;
	
	@Transactional
	public void addXray(XrayVO xrayVO) {
		
		this.xrayDAO.addXray(xrayVO);	
	}


	
}
