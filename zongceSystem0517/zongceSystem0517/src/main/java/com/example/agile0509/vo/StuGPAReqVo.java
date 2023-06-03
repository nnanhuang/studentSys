package com.example.agile0509.vo;

import lombok.Data;

@Data
public class StuGPAReqVo {
    private String name;
    private Integer id;
    private String department;
    private String gpa;

    public StuGPAReqVo() {
    }

}
