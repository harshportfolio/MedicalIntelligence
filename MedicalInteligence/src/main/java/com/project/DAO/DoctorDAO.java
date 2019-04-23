package com.project.DAO;

import java.util.List;

import com.project.model.DoctorVO;
import com.project.model.LoginVO;

public interface DoctorDAO {
	
	public void insertDoctor(DoctorVO doctorVO);
	public List viewDoctor();
	public List editDoctor(DoctorVO doctorVO);
	public void updateDoctor(DoctorVO doctorVO);
}
