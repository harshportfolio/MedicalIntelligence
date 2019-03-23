package com.project.DAO;

import java.util.List;

import com.project.model.ComplainVO;

public interface ComplainDAO {
	
	public void insertComplain(ComplainVO complainVO);
	public List viewComplain();
	public List searchComplain(ComplainVO complainVO);
	public List seeComplain(ComplainVO complainVO);

}
