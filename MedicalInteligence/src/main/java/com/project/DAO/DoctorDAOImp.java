package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.DoctorVO;

@Repository
public class DoctorDAOImp implements DoctorDAO {
	@Autowired
	private SessionFactory sessionFactory;

		public void insertDoctor(DoctorVO doctorVO){
			
			Session session = this.sessionFactory.getCurrentSession();
			session.saveOrUpdate(doctorVO);
		}
		
		public List viewDoctor()
		{
			List doctorList=new ArrayList();
			Session session =this.sessionFactory.getCurrentSession();
			Query q=session.createQuery("from DoctorVO ");
			doctorList=q.list();
			return doctorList;
			
		}
		
		
	}

