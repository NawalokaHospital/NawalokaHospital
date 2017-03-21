/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.model.AddrecordDoc;
import com.itfaculty.progress.model.Patients;
import com.itfaculty.progress.model.Records;
import com.itfaculty.progress.model.login;
import com.itfaculty.progress.services.PatientsServices;
import com.itfaculty.progress.services.RecordsServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class DoctorController {

    @Autowired
    private RecordsServices recordsServices;

    @Autowired
    private PatientsServices patientsServices;

    @RequestMapping(value = {"/doc_mainpage"}, method = RequestMethod.GET)
    public String LoadRegDoctorPage(ModelMap map) {
        login log = new login();
        map.addAttribute("logpatient", log);
        return "doc_mainpage";
    }

    @RequestMapping(value = {"/doc_mainpage"}, method = RequestMethod.POST)
    public String LogNewDoctortPage(login data, ModelMap map) {
        Patients pati = new Patients();
        pati.setPatientUname(data.getUsername());
        pati.setPatientPassword(data.getPassword());
        if (patientsServices.loginPatient(pati) != null) {
            return "redirect:" + "doc_pationprof?patId=" + patientsServices.loginPatient(pati).getPatientId();
        } else {
            login log = new login();
            map.addAttribute("logpatient", log);
            return "doc_mainpage";
        }
    }

    @RequestMapping(value = {"/doc_pationprof"}, method = RequestMethod.GET)
    public String LoadDoctorPatientProfPage(ModelMap map, int patId) {
        AddrecordDoc adddoc = new AddrecordDoc();
        Patients val = patientsServices.GetPatients(patId);
        Records recd = recordsServices.GetRecords(val);
        map.addAttribute("patientinfo", val);
        map.addAttribute("patirec", recd);
        map.addAttribute("addrecdoc", adddoc);
        return "doc_pationprof";
    }

    @RequestMapping(value = {"/saverecorddoc"}, method = RequestMethod.POST)
    public String SaveDoctorPatientProfPage(ModelMap map, AddrecordDoc addrecdoc) {
        Records datarec = recordsServices.GetRecordsById(addrecdoc.getRecordId());
        if (datarec.getRecordFrequency() == null) {
            datarec.setRecordFrequency(addrecdoc.getType());
        }
        if (datarec.getRecordCondition() == null) {
            datarec.setRecordCondition(addrecdoc.getDiscriptiontype());
        }
        if (datarec.getRecordResultPrescription() == null) {
            datarec.setRecordResultPrescription(addrecdoc.getDiscription());
        }
        recordsServices.UpdateRecords(datarec);
        return "redirect:" + "doc_pationprof?patId=" + addrecdoc.getPatId();
    }

    @RequestMapping(value = {"/doc_pationhistry"}, method = RequestMethod.GET)
    public String LoaPationHistryDoctorPatientProfPage(ModelMap map, int pationId) {
        System.out.println("****" + pationId);

        // System.out.println(patId + "************");
        Patients val = patientsServices.GetPatients(pationId);
        Records recd = recordsServices.GetRecords(val);
        map.addAttribute("patientinfo", val);
        map.addAttribute("patirec", recd);

        return "doc_pationhistry";
    }

}
