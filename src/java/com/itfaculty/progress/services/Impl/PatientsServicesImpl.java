/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services.Impl;

import com.itfaculty.progress.dao.PatientsDao;
import com.itfaculty.progress.model.Patients;
import com.itfaculty.progress.services.PatientsServices;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("patientsServices")
public class PatientsServicesImpl implements PatientsServices {

    @Autowired
    private PatientsDao patientsDao;

    @Transactional
    @Override
    public List<Patients> GetAllPatients(String patientId) {
        return patientsDao.GetAllPatients(patientId);
    }

    @Transactional
    @Override
    public Patients GetPatients(int PatientsID) {
        return patientsDao.GetPatients(PatientsID);
    }

    @Transactional
    @Override
    public Patients loginPatient(Patients patients) {
        return patientsDao.loginPatient(patients);
    }

}
