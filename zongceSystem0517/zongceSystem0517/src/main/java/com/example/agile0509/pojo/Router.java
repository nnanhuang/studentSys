package com.example.agile0509.pojo;

import lombok.Data;

@Data
public class Router {
    private String path;
    private String name;
    private Meta meta;
    private String component;

    public Router(String path, String name, Meta meta,String component) {
        this.path = path;
        this.name = name;
        this.meta = meta;
        this.component=component;
    }

    // 省略 getter 和 setter 方法
}
