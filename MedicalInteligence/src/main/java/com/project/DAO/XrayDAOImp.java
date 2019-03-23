package com.project.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.XrayVO;

@Repository
public class XrayDAOImp implements XrayDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void addXray(XrayVO xrayVO)
	{
		Session session=sessionFactory.getCurrentSession();
		session.save(xrayVO);
		
	}
	

}
