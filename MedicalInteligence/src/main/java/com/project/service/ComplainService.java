package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.*;
import com.project.DAO.ComplainDAO;
import com.project.model.ComplainVO;

@Service
public class ComplainService {
	@Autowired 
	ComplainDAO complainDAO;
	
	@Transactional
	public void insertComplain(ComplainVO complainVO)
	{
		this.complainDAO.insertComplain(complainVO);
	}
	
	@Transactional
	public List viewComplain()
	{
		List ls=this.complainDAO.viewComplain();
		return ls;
	}
	
	@Transactional
	public List searchComplain(ComplainVO complainVO)
	{
		List ls=this.complainDAO.searchComplain(complainVO);
		return ls;
	}
	
	@Transactional
	public List seeComplain(ComplainVO complainVO)
	{
		List ls=this.complainDAO.seeComplain(complainVO);
		return ls;
	}
}
