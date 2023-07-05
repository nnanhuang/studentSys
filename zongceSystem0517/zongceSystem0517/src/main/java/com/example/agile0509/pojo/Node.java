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

    public Node(int id, Boolean type, String icon, String index, String title,int permiss,int parentId,String component) {
        this.id = id;
        this.type=type;
        this.icon=icon;
        this.index = index;
        this.title = title;
        this.permiss = permiss;
        this.parentId=parentId;
        this.component=component;
    }

}
