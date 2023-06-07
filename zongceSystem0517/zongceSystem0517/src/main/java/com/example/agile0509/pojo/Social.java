package com.example.agile0509.pojo;

import com.fasterxml.jackson.annotation.JsonSubTypes;
import lombok.Data;
import lombok.extern.jbosslog.JBossLog;

import javax.persistence.Lob;

@Data
public class Social {
    private int id;
    private String stuId;
    private String time;
    private String content;
    private String material;
}
