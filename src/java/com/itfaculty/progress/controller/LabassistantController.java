/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.model.Labassistants;
import com.itfaculty.progress.services.LabassistantsServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/")
public class LabassistantController {

//    @Autowired
//   private LabassistantsServices labassistantsServices;
    @RequestMapping(value = {"/lab_mainpage"}, method = RequestMethod.GET)
    public String LoadLabassistantPage(ModelMap map) {
        return "lab_mainpage";
    }

}
