/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.controller;

import com.itfaculty.progress.model.Doctors;
import com.itfaculty.progress.model.Labassistants;
import com.itfaculty.progress.model.Receptionists;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
public class LogoutController {

    @RequestMapping(value = {"/logout"}, method = RequestMethod.GET)
    public String logout(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.setAttribute("name", null);
        return "redirect:" + "login";
    }
}
