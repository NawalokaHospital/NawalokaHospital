/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.model.Doctors;
import com.itfaculty.progress.model.Labassistants;
import com.itfaculty.progress.model.Receptionists;
import com.itfaculty.progress.model.login;
import com.itfaculty.progress.services.DoctorsServices;
import com.itfaculty.progress.services.LabassistantsServices;
import com.itfaculty.progress.services.ReceptionistsServices;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Praneeth
 */
@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    public DoctorsServices doctorServices;

    @Autowired
    public ReceptionistsServices ReceptionistsServices;

    @Autowired
    public LabassistantsServices LabassistantsServices;

    @RequestMapping(value = {"/login", "/"}, method = RequestMethod.GET)
    public String LoadPage(ModelMap map) {
        login logdata = new login();
        map.addAttribute("logdata", logdata);
        return "login";
    }

    @RequestMapping(value = {"/login", "/"}, method = RequestMethod.POST)
    public String LoginRequiredPage(login logdata, ModelMap map, HttpServletRequest request, HttpServletResponse response) {
        map.addAttribute("logdata", logdata);

        Doctors dc = new Doctors();
        dc.setDoctorUsername(logdata.getUsername());
        dc.setDoctorPassword(logdata.getPassword());

        Receptionists rec = new Receptionists();
        rec.setReceptionistUsername(logdata.getUsername());
        rec.setReceptionistPassword(logdata.getPassword());

        Labassistants lab = new Labassistants();
        lab.setLabassistantUsername(logdata.getUsername());
        lab.setLabassistantPassword(logdata.getPassword());

        HttpSession session = request.getSession();

        if (doctorServices.logindoctor(dc) != null) {
            session.setAttribute("name", logdata.getUsername());
            return "redirect:" + "doc_mainpage";
        }

        if (ReceptionistsServices.loginReceptionists(rec) != null) {
            session.setAttribute("name", logdata.getUsername());
            return "redirect:" + "recep_mainpage";
        }

        if (LabassistantsServices.loginLabassistants(lab) != null) {
            session.setAttribute("name", logdata.getUsername());
            return "redirect:" + "lab_mainpage";
        }

        map.addAttribute("message", "Error Login");
        return "login";
    }

}
