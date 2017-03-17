/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.dao.Impl;

import com.itfaculty.progress.dao.LabassistantsDao;
import com.itfaculty.progress.model.Labassistants;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("labassistantsDao")
public class LabassistantsDaoImpl implements LabassistantsDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Labassistants loginLabassistants(Labassistants labassistants) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Labassistants.class);
        Criterion usernam = Restrictions.eq("labassistantUsername", labassistants.getLabassistantUsername());
        Criterion passw = Restrictions.eq("labassistantPassword", labassistants.getLabassistantPassword());
        LogicalExpression andExp = Restrictions.and(usernam, passw);
        cr.add(andExp);
        Labassistants result = (Labassistants) cr.uniqueResult();
        return result;
    }

    @Override
    public void addLabassistants(Labassistants labassistants) {
        sessionFactory.getCurrentSession().save(labassistants);
    }

    @Override
    public List<Labassistants> GetAllLabassistants() {
        List<Labassistants> list = sessionFactory.getCurrentSession().createCriteria(Labassistants.class).list();
        return list;
    }

}
