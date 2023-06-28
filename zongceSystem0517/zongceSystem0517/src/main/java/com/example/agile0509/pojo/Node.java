package com.example.agile0509.pojo;

import lombok.Data;

@Data
public class Node {
    private int id;
    private String type;
    private String icon;
    private String index;
    private String title;
    private int permiss;
    private int parentId;

}
