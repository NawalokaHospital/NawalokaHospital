/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.dao;

import com.itfaculty.progress.model.Receptionists;

/**
 *
 * @author user
 */
public interface ReceptionistsDao {

    public void addReceptionists(Receptionists receptionists);

    public Receptionists loginReceptionists(Receptionists receptionists);
}
