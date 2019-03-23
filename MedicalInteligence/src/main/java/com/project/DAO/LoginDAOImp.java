package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}