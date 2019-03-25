package com.project.DAO;



import java.util.*;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;


@Repository
public class ReportDAOImp implements ReportDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public List viewReport(LoginVO loginVO2)
	{
		List ls=new ArrayList();
		Session session=this.sessionFactory.getCurrentSession();
		Query query=session.createQuery("From ReportVO where userName='"+loginVO2.getUsername()+"'");
		ls=query.list();
		
		System.out.println("ls :::: " + ls.size());
		return ls;
		
	}

	

}
