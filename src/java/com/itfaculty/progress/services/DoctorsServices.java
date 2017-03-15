/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services;

import com.itfaculty.progress.model.Doctors;
import java.util.List;

/**
 *
 * @author Praneeth Madusanka
 */
public interface DoctorsServices {

    public void addDoctors(Doctors doctors);
    
    public Doctors logindoctor(Doctors doctors);
    
    public List<Doctors> GetAllDoctor();
}
