/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.model;

public class AddrecordDoc {

    private int recordId;
    private int patId;
    private String type;
    private String discriptiontype;
    private String discription;
    private String[] testtype = {"Blood", "Urine", "Biopsy", "Endoscopy"};

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

    /**
     * @return the discriptiontype
     */
    public String getDiscriptiontype() {
        return discriptiontype;
    }

    /**
     * @param discriptiontype the discriptiontype to set
     */
    public void setDiscriptiontype(String discriptiontype) {
        this.discriptiontype = discriptiontype;
    }

    /**
     * @return the patId
     */
    public int getPatId() {
        return patId;
    }

    /**
     * @param patId the patId to set
     */
    public void setPatId(int patId) {
        this.patId = patId;
    }
}
