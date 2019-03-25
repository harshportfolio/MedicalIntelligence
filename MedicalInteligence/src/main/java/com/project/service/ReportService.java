package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.ReportDAO;
import com.project.model.LoginVO;


@Service
public class ReportService {
	
	@Autowired
	ReportDAO reportDAO;
	
	@Transactional
	public List viewReport(LoginVO loginVO2) 
	{
		List ls=this.reportDAO.viewReport(loginVO2);
		return ls;
	}

}
