/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.dao.Impl;

import com.itfaculty.progress.dao.RecordsDao;
import com.itfaculty.progress.model.Patients;
import com.itfaculty.progress.model.Records;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("recordsDao")
public class RecordsDaoImpl implements RecordsDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Records> GetAllRecords() {
        List<Records> list = sessionFactory.getCurrentSession().createCriteria(Records.class).list();
        return list;
    }

    @Override
    public Records GetRecords(Patients patients) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Records.class);
        cr.add(Restrictions.eq("patients", patients));
        Records result = (Records) cr.uniqueResult();
        return result;
    }

}
