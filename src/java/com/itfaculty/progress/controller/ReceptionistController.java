/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.model.Doctors;
import com.itfaculty.progress.model.Labassistants;
import com.itfaculty.progress.services.DoctorsServices;
import com.itfaculty.progress.services.LabassistantsServices;
import java.util.List;
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
public class ReceptionistController {

    @Autowired
    private DoctorsServices doctorsServices;

    @Autowired
    private LabassistantsServices labassistantsServices;

    @RequestMapping(value = {"/recep_mainpage"}, method = RequestMethod.GET)
    public String LoadReceptionistPage(ModelMap map) {
        List<Doctors> all = doctorsServices.GetAllDoctor();
        List<Labassistants> alllab = labassistantsServices.GetAllLabassistants();
        map.addAttribute("docall", all);
        map.addAttribute("laball", alllab);
        return "recep_mainpage";

    }
}
