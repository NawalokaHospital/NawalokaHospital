/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services.Impl;

import com.itfaculty.progress.dao.ReceptionistsDao;
import com.itfaculty.progress.model.Receptionists;
import com.itfaculty.progress.services.ReceptionistsServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author user
 */
@Service("receptionistsServicesImpl")
public class ReceptionistsServicesImpl implements ReceptionistsServices {

    @Autowired
    public ReceptionistsDao receptionistsDao;

    @Transactional
    @Override
    public Receptionists loginReceptionists(Receptionists receptionists) {
        return receptionistsDao.loginReceptionists(receptionists);
    }

    @Transactional
    @Override
    public void addReceptionists(Receptionists receptionists) {
        receptionistsDao.addReceptionists(receptionists);
    }

}
