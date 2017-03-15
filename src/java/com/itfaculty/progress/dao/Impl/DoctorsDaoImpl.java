/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.dao.Impl;

import com.itfaculty.progress.dao.DoctorsDao;
import com.itfaculty.progress.model.Doctors;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Praneeth Madusanka
 */
@Repository("doctorsDao")
public class DoctorsDaoImpl implements DoctorsDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addDoctors(Doctors doctors) {
        sessionFactory.getCurrentSession().save(doctors);
    }

    @Override
    public Doctors logindoctor(Doctors doctors) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Doctors.class);
        Criterion usernam = Restrictions.eq("doctorUsername", doctors.getDoctorUsername());
        Criterion passw = Restrictions.eq("doctorPassword", doctors.getDoctorPassword());
        LogicalExpression andExp = Restrictions.and(usernam, passw);
        cr.add(andExp);
        Doctors result = (Doctors) cr.uniqueResult();
        return result;
    }

    @Override
    public List<Doctors> GetAllDoctor() {
        List<Doctors> list = sessionFactory.getCurrentSession().createCriteria(Doctors.class).list();
        return list;
    }

}
