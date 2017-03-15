/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services;

import com.itfaculty.progress.model.Patients;
import java.util.List;

/**
 *
 * @author Praneeth Madusanka
 */
public interface PatientsServices {

    List<Patients> GetAllPatients(String patientId);
}
