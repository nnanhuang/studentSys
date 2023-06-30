package com.example.agile0509.pojo;

import lombok.Data;

@Data
public class Meta {
    private String title;
    private String permiss;

    public Meta(String title, String permiss) {
        this.title = title;
        this.permiss = permiss;
    }
}
