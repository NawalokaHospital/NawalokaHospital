/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.dao.Impl;

import com.itfaculty.progress.dao.PatientsDao;
import com.itfaculty.progress.model.Patients;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Praneeth Madusanka
 */
@Repository("patientsDao")
public class PatientsDaoImpl implements PatientsDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Patients> GetAllPatients(String patientId) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Patients.class);
        Criterion frist = Restrictions.ilike("patientFirstname", patientId + "%", MatchMode.ANYWHERE);
        Criterion last = Restrictions.ilike("patientLastname", patientId + "%", MatchMode.ANYWHERE);
        LogicalExpression orExp = Restrictions.or(frist, last);
        cr.add(orExp);
        List<Patients> result = cr.list();
        return result;
    }

}