/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services.Impl;

import com.itfaculty.progress.dao.RecordsDao;
import com.itfaculty.progress.model.Patients;
import com.itfaculty.progress.model.Records;
import com.itfaculty.progress.services.RecordsServices;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("recordsServices")
public class RecordsServicesImpl implements RecordsServices {

    @Autowired
    public RecordsDao recordsDao;

    @Transactional
    @Override
    public List<Records> GetAllRecords() {
        return recordsDao.GetAllRecords();
    }

    @Transactional
    @Override
    public Records GetRecords(Patients patients) {
        return recordsDao.GetRecords(patients);
    }

}
