/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.dao;

import com.itfaculty.progress.model.Labassistants;
import java.util.List;

/**
 *
 * @author user
 */
public interface LabassistantsDao {

    public void addLabassistants(Labassistants labassistants);

    public Labassistants loginLabassistants(Labassistants labassistants);
    
    public List<Labassistants> GetAllLabassistants();
    
     public Labassistants GetLabDataByID(int labId);
}
