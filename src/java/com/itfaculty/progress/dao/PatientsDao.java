/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.dao;

import com.itfaculty.progress.model.Patients;
import java.util.List;

/**
 *
 * @author Praneeth Madusanka
 */
public interface PatientsDao {

    public Patients GetPatients(int PatientsID);

    List<Patients> GetAllPatients(String patientId);
}
