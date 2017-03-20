/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.model.Records;
import com.itfaculty.progress.services.RecordsServices;
import com.itfaculty.progress.services.uploadfileservices;
import java.io.IOException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Praneeth Madusanka
 */
@Controller
@RequestMapping("/")
public class ImageUplodeController {

    @Autowired
    public uploadfileservices uploadfileservices;

    @Autowired
    public RecordsServices recordsServices;

    @RequestMapping(value = {"/uploadimage"}, method = RequestMethod.POST)
    public String imageupload(@RequestParam("image") MultipartFile file, @RequestParam("recodid") int recodid, @RequestParam("patientid") int patientid, ModelMap map, HttpServletRequest request) throws IOException {
        boolean val = uploadfileservices.uploadTextFile(file, request);
        if (val = true) {
            Records data = recordsServices.GetRecordsById(recodid);
            data.setRecordImage(file.getOriginalFilename());
            recordsServices.UpdateRecords(data);
            return "redirect:" + "lab_pationprof?patId=" + patientid;
        }
        map.addAttribute("imageError", "Uplode Error");
        return "redirect:" + "lab_pationprof?patId=" + patientid;
    }
}
