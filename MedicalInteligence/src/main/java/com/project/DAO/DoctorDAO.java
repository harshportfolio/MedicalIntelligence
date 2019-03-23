package com.project.DAO;

import java.util.List;

import com.project.model.DoctorVO;

public interface DoctorDAO {
	
	public void insertDoctor(DoctorVO doctorVO);
	public List viewDoctor();
}
