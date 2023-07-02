package com.example.agile0509.pojo;

import com.alibaba.excel.annotation.ExcelProperty;
import lombok.Data;

@Data
public class UserRole {
    @ExcelProperty(value = "user_id")
    private int userId;

    @ExcelProperty(value = "role_id")
    private String roleId;
}

