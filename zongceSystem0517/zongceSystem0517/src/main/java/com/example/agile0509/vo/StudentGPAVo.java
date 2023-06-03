package com.example.agile0509.vo;

import lombok.Data;

@Data
public class StudentGPAVo {
    private String stuNo;
    private String year;
    private String gpa;

    public StudentGPAVo(String stuNo, String year, String gpa) {
        this.stuNo = stuNo;
        this.year = year;
        this.gpa = gpa;
    }

}
