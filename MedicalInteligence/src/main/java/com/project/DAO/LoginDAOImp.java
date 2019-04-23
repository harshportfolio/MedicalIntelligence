package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;

@Repository
public class LoginDAOImp implements LoginDAO {

	@Autowired
	SessionFactory sessionFactory;

	//@Override
	public List searchLogin(String userName) {

		List ls = new ArrayList();
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("From LoginVO where username='" + userName + "'");
		ls = q.list();

		return ls;
	}
	public void insertLogin(LoginVO loginVO)
	{
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(loginVO);
	}
	
	public List searchstep1(LoginVO loginVO)
	{
		List ls = new ArrayList();
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("From LoginVO where username='" +loginVO.getUsername()+ "'");
		ls = q.list();
		return ls;
	}
	
	public void updatePassword(LoginVO loginVO)
	{
		List ls = new ArrayList();
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("UPDATE LoginVO set password='"+loginVO.getPassword() +"' where username='"+loginVO.getUsername() +"'");
		q.executeUpdate();
	}
	public void updateLogin(LoginVO loginVO)
	{
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(loginVO);
	}
}
