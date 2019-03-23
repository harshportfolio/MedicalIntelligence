package com.project.DAO;

import java.util.ArrayList;
import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.DatasetVO;

@Repository
public class DatasetDAOImp implements DatasetDAO {

	@Autowired
	private SessionFactory sessionFactory;
    
  // @Override
	public void insertDataset(DatasetVO datasetVO) {
		
		Session session =  this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(datasetVO);
	}
	
	//@Override
	public List viewDataset()
	{
		List ls=new ArrayList();
		Session session =this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from DatasetVO where status=true ");
		ls=q.list();
		return ls;
	}
	
	

	public List editDataset(DatasetVO datasetVO)
	{
		List ls=new ArrayList();
		Session session =this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from DatasetVO where datasetId='"+datasetVO.getDatasetId()+"'");
		ls=q.list();
		return ls;
	}
     
	/*public void updateDataset(DatasetVO datasetVO) {
		
		Session session =  this.sessionFactory.getCurrentSession();
		session.update(datasetVO);

		}
*/
	}
