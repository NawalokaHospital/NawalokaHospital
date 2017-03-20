/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services.Impl;

import com.itfaculty.progress.services.uploadfileservices;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Praneeth
 */
@Service("uploadfileservices")
public class uploadfileservicesimpl implements uploadfileservices {

    @Override
    public boolean uploadTextFile(MultipartFile file, HttpServletRequest request) {
        try {
            System.out.println("****" + file.getName());
            System.out.println("******" + Arrays.toString(file.getBytes()));
             FileCopyUtils.copy(file.getBytes(),new File("C:/upload/"+file.getOriginalFilename()));
            return true;
        } catch (IOException ex) {
            return false;
        }
    }
}
