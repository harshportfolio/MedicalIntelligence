package com.project.DAO;


import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.FeedbackVO;

@Repository
public class FeedbackDAOImp implements FeedbackDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void insertFeedback(FeedbackVO feedBackVO)
	{
		
		Session session = this.sessionFactory.getCurrentSession();
		session.save(feedBackVO);
		
	}
	
	public List viewFeedback()
	{
		List ls =new ArrayList();
		Session session=this.sessionFactory.getCurrentSession();
		Query query=session.createQuery("From FeedbackVO");
		ls=query.list();
		return ls;
	}
	
}
