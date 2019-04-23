package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ComplainVO;

@Repository
public class ComplainDAOImp implements ComplainDAO {
	@Autowired
	private SessionFactory sessionFactory;
    
	public void insertComplain(ComplainVO complainVO)
	{
			Session session =  this.sessionFactory.getCurrentSession();
			session.saveOrUpdate(complainVO);
	}
	
	public List viewComplain()
	{
		
		List ls=new ArrayList();
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("From ComplainVO");
	     ls=q.list(); 
		return ls;
		
	}
	
	public List searchComplain(ComplainVO complainVO) {
		List ls =new ArrayList();
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("From ComplainVO where complainID='"+complainVO.getComplainId()+"'");
	     ls=q.list(); 
		return ls;
	}
	
	public List seeComplain(ComplainVO complainVO)
	{
	List  complainList =new ArrayList();	
	Session session =this.sessionFactory.getCurrentSession();
	Query q = session.createQuery("from ComplainVO where loginVO.id = '"+complainVO.getLoginVO().getId()+"'");
   complainList = q.list();
	return complainList;
   }
}
