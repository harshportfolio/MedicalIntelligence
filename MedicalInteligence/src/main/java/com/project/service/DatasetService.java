package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.DatasetDAO;

import com.project.model.DatasetVO;


@Service
public class DatasetService {
	
@Autowired DatasetDAO datasetDAO;
	
	
	@Transactional
	public void insertDataset(DatasetVO datasetVO)
	{
		this.datasetDAO.insertDataset(datasetVO);
	}
	
	@Transactional
	public List viewDatatset()
	{
		List ls=this.datasetDAO.viewDataset();
		return ls;
	}
	
	@Transactional
	public List editDataset(DatasetVO datasetVO)
	{
		List ls=this.datasetDAO.editDataset(datasetVO);
		return ls;
	}
	/*
	@Transactional
	public void updateDataset(DatasetVO datasetVO)
	{
		this.datasetDAO.updateDataset(datasetVO);
	}*/
}
