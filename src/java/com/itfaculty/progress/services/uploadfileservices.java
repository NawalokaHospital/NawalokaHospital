/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Praneeth Madusanka
 */
public interface uploadfileservices {

    public boolean uploadTextFile(MultipartFile file, HttpServletRequest request);
}
