package com.example.agile0509.vo;

import lombok.Data;

@Data
public class StuVolunteerReqVo {
    private String name;
    private Integer id;
    private String department;
    private Double hours;
    private String status;

    public StuVolunteerReqVo() {
    }

}
