package com.example.agile0509.vo;

import lombok.Data;

@Data
public class StudentVolunVo {
    private String stuNo;
    private String year;
    private Double time;

    public StudentVolunVo(String stuNo, String year, Double time) {
        this.stuNo = stuNo;
        this.year = year;
        this.time = time;
    }

}
