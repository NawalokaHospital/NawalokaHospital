/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services.Impl;

import com.itfaculty.progress.dao.LabassistantsDao;
import com.itfaculty.progress.model.Labassistants;
import com.itfaculty.progress.services.LabassistantsServices;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author user
 */
@Service("labassistantsServicesImpl")
public class LabassistantsServicesImpl implements LabassistantsServices {

    @Autowired
    public LabassistantsDao LabassistantsDao;

    @Transactional
    @Override
    public Labassistants loginLabassistants(Labassistants labassistants) {
        return LabassistantsDao.loginLabassistants(labassistants);
    }

    @Transactional
    @Override
    public void addLabassistants(Labassistants labassistants) {
        LabassistantsDao.addLabassistants(labassistants);
    }

    @Transactional
    @Override
    public List<Labassistants> GetAllLabassistants() {
        return LabassistantsDao.GetAllLabassistants();
    }

}
