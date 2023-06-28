package com.example.agile0509.pojo;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Menu {
    private String icon;
    private String index;
    private String title;
    private String permiss;
    private List<Menu> subs;

    public Menu() {
        this.subs = new ArrayList<>();
    }

    public Menu(String icon, String index, String title, String permiss, List<Menu> subs) {
        this.icon = icon;
        this.index = index;
        this.title = title;
        this.permiss = permiss;
        this.subs = subs;
    }

    // Getters and setters

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getIndex() {
        return index;
    }

    public void setIndex(String index) {
        this.index = index;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPermiss() {
        return permiss;
    }

    public void setPermiss(String permiss) {
        this.permiss = permiss;
    }

    public List<Menu> getSubs() {
        return subs;
    }

    public void setSubs(List<Menu> subs) {
        this.subs = subs;
    }
}
