/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.model.Addrecord;
import com.itfaculty.progress.model.Doctors;
import com.itfaculty.progress.model.Labassistants;
import com.itfaculty.progress.model.Patients;
import com.itfaculty.progress.model.Records;
import com.itfaculty.progress.services.DoctorsServices;
import com.itfaculty.progress.services.LabassistantsServices;
import com.itfaculty.progress.services.PatientsServices;
import com.itfaculty.progress.services.RecordsServices;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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

    @Autowired
    private PatientsServices patientsServices;

    @Autowired
    private RecordsServices recordsServices;

    @RequestMapping(value = {"/recep_mainpage"}, method = RequestMethod.GET)
    public String LoadReceptionistPage(ModelMap map) {
        List<Doctors> all = doctorsServices.GetAllDoctor();
        List<Labassistants> alllab = labassistantsServices.GetAllLabassistants();
        map.addAttribute("docall", all);
        map.addAttribute("laball", alllab);
        return "recep_mainpage";

    }

    @RequestMapping(value = {"/recep_pationprof"}, method = RequestMethod.GET)
    public String LoadRecePationprof(ModelMap map, int user_name) {
        Addrecord addrec = new Addrecord();
        Patients val = patientsServices.GetPatients(user_name);

        if (val != null) {
            map.addAttribute("pdata", val);
        }

        Records record = recordsServices.GetRecords(val);

        if (record != null) {
            map.addAttribute("record", record);
        }
        List<Doctors> all = doctorsServices.GetAllDoctor();
        List<Labassistants> alllab = labassistantsServices.GetAllLabassistants();
        map.addAttribute("docall", all);
        map.addAttribute("laball", alllab);
        map.addAttribute("addrec", addrec);
        return "recep_pationprof";

    }

    @RequestMapping(value = {"/recep_pationprof"}, method = RequestMethod.POST)
    public String SaveRecePationprof(Addrecord addrecord, ModelMap map) {
        System.out.println(addrecord.getDoctorID());
        System.out.println(addrecord.getLabId());
        System.out.println(addrecord.getPatientId());
        return "redirect:" + "recep_pationprof?user_name=" + addrecord.getPatientId();
    }

    @RequestMapping(value = {"/saverecord"}, method = RequestMethod.POST)
    public String SaveRecode(Addrecord addrec, ModelMap map) {
        Doctors doc = doctorsServices.GetDoctorById(addrec.getDoctorID());
        Labassistants lab = labassistantsServices.GetLabDataByID(addrec.getLabId());
        Patients pat = patientsServices.GetPatients(addrec.getPatientId());
        if (doc != null && lab != null && pat != null) {
            Date yourDate = new Date();
            Records rec = new Records();
            rec.setDoctors(doc);
            rec.setLabassistants(lab);
            rec.setPatients(pat);
            rec.setRecordCreatedDate(yourDate);
            try {
                recordsServices.addRecords(rec);
            } catch (Exception e) {
            }
            return "redirect:" + "recep_pationprof?user_name=" + addrec.getPatientId();
        } else {
            return "redirect:" + "recep_pationprof?user_name=" + addrec.getPatientId();
        }
    }

    @RequestMapping(value = {"/recep_addpation"}, method = RequestMethod.GET)
    public String AddPation(ModelMap map) {
        Patients pat = new Patients();
        map.addAttribute("pation", pat);
        return "recep_addpation";
    }

    @RequestMapping(value = {"/recep_addpation"}, method = RequestMethod.POST)
    public String SavePation(Patients pation, ModelMap map) {
        Date yourDate = new Date();
        pation.setPatientCreatedDate(yourDate);
        patientsServices.AddPatient(pation);
        Patients pat = new Patients();
        map.addAttribute("pation", pat);
        return "recep_addpation";
    }
}
