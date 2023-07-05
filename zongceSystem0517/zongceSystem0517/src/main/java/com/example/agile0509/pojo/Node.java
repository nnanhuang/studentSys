package com.example.agile0509.pojo;

import lombok.Data;

import java.util.List;

@Data
public class Node {
    private int id;
    private Boolean type;
    private String icon;
    private String index;
    private String title;
    private int permiss;
    private int parentId;
    private String component;


}
