/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Praneeth Madusanka
 */
public class Regmodel {

    private String firstname;
    private String lastname;
    private String username;
    private String password;
    private String mobileno;
    private String setuserrole;
    private String[] userrole = {"Doctor", "Lab Assistant", "Reception"};

    /**
     * @return the firstname
     */
    public String getFirstname() {
        return firstname;
    }

    /**
     * @param firstname the firstname to set
     */
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    /**
     * @return the lastname
     */
    public String getLastname() {
        return lastname;
    }

    /**
     * @param lastname the lastname to set
     */
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the mobileno
     */
    public String getMobileno() {
        return mobileno;
    }

    /**
     * @param mobileno the mobileno to set
     */
    public void setMobileno(String mobileno) {
        this.mobileno = mobileno;
    }

    /**
     * @return the userrole
     */
    public String[] getUserrole() {
        return userrole;
    }

    /**
     * @param userrole the userrole to set
     */
    public void setUserrole(String[] userrole) {
        this.userrole = userrole;
    }

    /**
     * @return the setuserrole
     */
    public String getSetuserrole() {
        return setuserrole;
    }

    /**
     * @param setuserrole the setuserrole to set
     */
    public void setSetuserrole(String setuserrole) {
        this.setuserrole = setuserrole;
    }

}
