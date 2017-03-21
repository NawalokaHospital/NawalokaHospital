/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itfaculty.progress.services;

import com.itfaculty.progress.model.Patients;
import com.itfaculty.progress.model.Records;
import java.util.List;

public interface RecordsServices {

    public Records GetRecords(Patients patients);

    public List<Records> GetAllRecords();

    public void addRecords(Records records);

    public void UpdateRecords(Records record);

    public Records GetRecordsById(int recordsId);

    public List<Records> GetRecordsByPationId(int pationId);
}
