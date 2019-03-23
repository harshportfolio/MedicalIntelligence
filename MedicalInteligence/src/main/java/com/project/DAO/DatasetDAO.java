package com.project.DAO;

import java.util.List;

import com.project.model.DatasetVO;


public interface DatasetDAO {
	
	public void insertDataset(DatasetVO datasetVO);
	public List viewDataset();
	public List editDataset(DatasetVO datasetVO);
	/*public void updateDataset(DatasetVO datasetVO);*/
}
