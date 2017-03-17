/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.model.Labassistants;
import com.itfaculty.progress.model.Patients;
import com.itfaculty.progress.model.Records;
import com.itfaculty.progress.model.login;
import com.itfaculty.progress.services.LabassistantsServices;
import com.itfaculty.progress.services.PatientsServices;
import com.itfaculty.progress.services.RecordsServices;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/")
public class LabassistantController {

    @Autowired
    public PatientsServices patientsServices;
    
    @Autowired
    public RecordsServices recordsServices;

    @RequestMapping(value = {"/lab_mainpage"}, method = RequestMethod.GET)
    public String LoadLabassistantPage(ModelMap map) {
        login log = new login();
        map.addAttribute("logdata", log);
        return "lab_mainpage";
    }

    @RequestMapping(value = {"/lab_mainpage"}, method = RequestMethod.POST)
    public String LogNewLabassistantPage(login data, ModelMap map) {
        Patients pati = new Patients();
        pati.setPatientUname(data.getUsername());
        pati.setPatientPassword(data.getPassword());
        if (patientsServices.loginPatient(pati) != null) {            
            return "redirect:" + "lab_pationprof?patId=" + patientsServices.loginPatient(pati).getPatientId();
        } else {
            login log = new login();
            map.addAttribute("logdata", log);
            return "lab_mainpage";
        }
    }
    
    @RequestMapping(value = {"/lab_pationprof"}, method = RequestMethod.GET)
    public String LoadLabassistantPatientProfPage(ModelMap map, int patId) { 
        System.out.println(patId + "************");
        Patients val = patientsServices.GetPatients(patId);
        Records recd = recordsServices.GetRecords(val);
        map.addAttribute("patientinfo", val);
        map.addAttribute("patirec", recd);
        return "lab_pationprof";
    }
}
