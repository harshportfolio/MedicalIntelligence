package com.project.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.PackageDAO;
import com.project.model.PackageVO;

@Service
public class PackageService {
	
    @Autowired PackageDAO packageDAO;
	
	
	@Transactional
	public void insertPackage(PackageVO packageVO)
	{
		this.packageDAO.insertPackage(packageVO);
	}
	
	@Transactional
	public List searchPackage() {		
		List ls=this.packageDAO.searchPackage();
		return ls;
	}
	
	@Transactional
	public void deletePackage(PackageVO packageVO)
	{
		this.packageDAO.deletePackage(packageVO);
	}
	
	@Transactional
	public List editPackage(PackageVO packageVO)
	{
		List ls=this.packageDAO.editPackage(packageVO);
		return ls;
	}
	
	@Transactional
	public void updatePackage(PackageVO packageVO)
	{
		this.packageDAO.updatePackage(packageVO);
	}
}
