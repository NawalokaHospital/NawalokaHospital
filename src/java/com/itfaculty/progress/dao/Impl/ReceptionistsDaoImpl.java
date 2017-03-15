/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.dao.Impl;

import com.itfaculty.progress.dao.ReceptionistsDao;
import com.itfaculty.progress.model.Receptionists;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author user
 */
@Repository("receptionistsDao")
public class ReceptionistsDaoImpl implements ReceptionistsDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Receptionists loginReceptionists(Receptionists receptionists) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Receptionists.class);
        Criterion usernam = Restrictions.eq("receptionistUsername", receptionists.getReceptionistUsername());
        Criterion passw = Restrictions.eq("receptionistPassword", receptionists.getReceptionistPassword());
        LogicalExpression andExp = Restrictions.and(usernam, passw);
        cr.add(andExp);
        Receptionists result = (Receptionists) cr.uniqueResult();
        return result;
    }

    @Override
    public void addReceptionists(Receptionists receptionists) {
         sessionFactory.getCurrentSession().save(receptionists);
    }
}
