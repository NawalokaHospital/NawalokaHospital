/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.services.RecordsServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Praneeth Madusanka
 */
@Controller
@RequestMapping("/")
public class DoctorController {

    @Autowired
    private RecordsServices recordsServices;

    @RequestMapping(value = {"/doc_mainpage"}, method = RequestMethod.GET)
    public String LoadRegDoctorPage(ModelMap map) {
        return "doc_mainpage";
    }    
    
}
