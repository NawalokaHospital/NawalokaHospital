/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.dao;

import com.itfaculty.progress.model.Patients;
import com.itfaculty.progress.model.Records;
import java.util.List;

/**
 *
 * @author Praneeth Madusanka
 */
public interface RecordsDao {

    public Records GetRecords(Patients patients);

    public List<Records> GetAllRecords();
}
