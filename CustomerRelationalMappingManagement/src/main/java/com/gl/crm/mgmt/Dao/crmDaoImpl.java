package com.gl.crm.mgmt.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gl.crm.mgmt.model.Crm;

@Repository
public class crmDaoImpl implements crmDao {

	@Autowired 
	SessionFactory factory;
	
	@Override
	@Transactional
	public void SaveOrUpdate(Crm crm) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(crm);
		
	}

	@Override
	@Transactional
	public void delete(int id) {
		Session session = factory.getCurrentSession();
		Crm theCrm =session.get(Crm.class, id);
		session.delete(theCrm);
		
	}

	@Override
	@Transactional
	public Crm getByid(int id) {
		Session session = factory.getCurrentSession();
		Crm theCrm = session.get(Crm.class, id);
		return theCrm;
	}

	@Override
	@Transactional
	public List<Crm> showAll() {
		Session session = factory.getCurrentSession();
		Criteria c  = session.createCriteria(Crm.class);
		return c.list();
	}
	
	
	
	

}
