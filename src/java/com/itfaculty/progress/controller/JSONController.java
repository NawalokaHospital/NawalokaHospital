/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.google.gson.Gson;
import com.itfaculty.progress.model.Patients;
import com.itfaculty.progress.services.PatientsServices;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/")
public class JSONController {

    @Autowired
    private PatientsServices patientsServices;

    @RequestMapping(value = "/user/{listNO}", method = RequestMethod.GET)
    public @ResponseBody
    String listUsers(@PathVariable("listNO") String aitentId, Model model, HttpServletRequest request) throws JSONException {
        System.out.println("****111*" + aitentId);

        List<Patients> val = patientsServices.GetAllPatients(aitentId);
        System.out.println(val);
        Gson gson = new Gson();
        String json = gson.toJson(val);
        return json;
    }

}
