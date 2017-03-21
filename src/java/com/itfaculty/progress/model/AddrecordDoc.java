/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.model;

public class AddrecordDoc {

    private int recordId;
    private String type;
    private String discription;
    private String[] testtype = {"One", "Two", "Three"};

    /**
     * @return the recordId
     */
    public int getRecordId() {
        return recordId;
    }

    /**
     * @param recordId the recordId to set
     */
    public void setRecordId(int recordId) {
        this.recordId = recordId;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the discription
     */
    public String getDiscription() {
        return discription;
    }

    /**
     * @param discription the discription to set
     */
    public void setDiscription(String discription) {
        this.discription = discription;
    }

    /**
     * @return the testtype
     */
    public String[] getTesttype() {
        return testtype;
    }

    /**
     * @param testtype the testtype to set
     */
    public void setTesttype(String[] testtype) {
        this.testtype = testtype;
    }

}
