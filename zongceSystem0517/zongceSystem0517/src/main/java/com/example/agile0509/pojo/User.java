package com.example.agile0509.pojo;

import lombok.Data;

/**
 * @Author YuanYue
 * @ClassName User
 */

@Data
public class User {
    private String username;
    private String password;
    private String role;


    public User(String username, String password, String role) {
        this.username = username;
        this.password = password;
        this.role=role;
    }

}

