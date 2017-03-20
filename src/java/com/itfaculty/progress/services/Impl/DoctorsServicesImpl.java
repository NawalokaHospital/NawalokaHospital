/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services.Impl;

import com.itfaculty.progress.dao.DoctorsDao;
import com.itfaculty.progress.model.Doctors;
import com.itfaculty.progress.services.DoctorsServices;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("doctorsServices")
public class DoctorsServicesImpl implements DoctorsServices {

    @Autowired
    private DoctorsDao doctorsDao;

    @Transactional
    @Override
    public void addDoctors(Doctors doctors) {
        doctorsDao.addDoctors(doctors);
    }

    @Transactional
    @Override
    public Doctors logindoctor(Doctors doctors) {
        return doctorsDao.logindoctor(doctors);
    }

    @Transactional
    @Override
    public List<Doctors> GetAllDoctor() {
        return doctorsDao.GetAllDoctor();
    }

    @Transactional
    @Override
    public Doctors GetDoctorById(int doctoreID) {
        return doctorsDao.GetDoctorById(doctoreID);
    }

}
