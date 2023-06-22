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


    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

}

