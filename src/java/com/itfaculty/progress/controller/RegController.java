/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.model.Doctors;
import com.itfaculty.progress.model.Labassistants;
import com.itfaculty.progress.model.Receptionists;
import com.itfaculty.progress.model.Regmodel;
import com.itfaculty.progress.model.login;
import com.itfaculty.progress.services.DoctorsServices;
import com.itfaculty.progress.services.LabassistantsServices;
import com.itfaculty.progress.services.ReceptionistsServices;
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
public class RegController {

    @Autowired
    public DoctorsServices doctorsServices;

    @Autowired
    public ReceptionistsServices ReceptionistsServices;

    @Autowired
    public LabassistantsServices LabassistantsServices;

    @RequestMapping(value = {"/reg_page"}, method = RequestMethod.GET)
    public String LoadRegPage(ModelMap map) {
        Regmodel regmod = new Regmodel();
        map.addAttribute("regObj", regmod);
        return "reg_page";
    }

    @RequestMapping(value = {"/reg_page"}, method = RequestMethod.POST)
    public String SaveRegPage(login logdata, Regmodel regObj, ModelMap map) {
        map.addAttribute("regObj", regObj);

        if (regObj.getSetuserrole().equals("Doctor") == true) {
            Doctors dc = new Doctors();
            dc.setDoctorFirstname(regObj.getFirstname());
            dc.setDoctorLastname(regObj.getLastname());
            dc.setDoctorUsername(regObj.getUsername());
            dc.setDoctorPassword(regObj.getPassword());
            dc.setDoctorTelno(regObj.getMobileno());
            doctorsServices.addDoctors(dc);
            map.addAttribute("logdata", logdata);
            return "redirect:" + "login";
        }
        if (regObj.getSetuserrole().equals("Reception") == true) {
            Receptionists rec = new Receptionists();
            rec.setReceptionistFirstname(regObj.getFirstname());
            rec.setReceptionistLastname(regObj.getLastname());
            rec.setReceptionistUsername(regObj.getUsername());
            rec.setReceptionistPassword(regObj.getPassword());
            ReceptionistsServices.addReceptionists(rec);
            map.addAttribute("logdata", logdata);
            return "redirect:" + "login";
        }
        if (regObj.getSetuserrole().equals("Lab Assistant") == true) {
            Labassistants lab = new Labassistants();
            lab.setLabassistantFirstname(regObj.getFirstname());
            lab.setLabassistantLastname(regObj.getLastname());
            lab.setLabassistantUsername(regObj.getUsername());
            lab.setLabassistantPassword(regObj.getPassword());
            LabassistantsServices.addLabassistants(lab);
            map.addAttribute("logdata", logdata);
            return "redirect:" + "login";
        }
        map.addAttribute("message", "Registration failed");
        return "reg_page";
    }
}
