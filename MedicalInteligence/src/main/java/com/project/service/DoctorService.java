package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.DoctorDAO;
import com.project.model.DoctorVO;

@Service
public class DoctorService {
	
	@Autowired DoctorDAO doctorDAO;
	
	@Transactional
	public void insertDoctor(DoctorVO doctorVO)
	{
		this.doctorDAO.insertDoctor(doctorVO);
	}
	
	@Transactional
	public List viewDoctor()
	{
		List doctorList=this.doctorDAO.viewDoctor();
		return doctorList;
	}

}
