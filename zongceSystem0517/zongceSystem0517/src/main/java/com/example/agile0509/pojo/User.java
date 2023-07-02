package com.example.agile0509.pojo;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author YuanYue
 * @ClassName User
 */

@Data
@NoArgsConstructor
public class User {
    @TableId(value = "id", type = IdType.AUTO)
    @ExcelProperty(value = "id",index = 0)
    private int id;

    @ExcelProperty(value = "username",index = 1)
    private String username;

    @ExcelProperty(value = "password", index = 2)
    private String password;


    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

}

