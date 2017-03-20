/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import java.io.IOException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
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

    @RequestMapping(value = {"/uploadimage"}, method = RequestMethod.POST)
    public String imageupload(@RequestParam("image") MultipartFile file, @RequestParam("recodid") int recodid, @RequestParam("patientid") int patientid, HttpServletRequest request) throws IOException {
        System.out.println(patientid + "*******" + recodid);
        return "redirect:" + "lab_pationprof?patId=" + patientid;
    }
}
