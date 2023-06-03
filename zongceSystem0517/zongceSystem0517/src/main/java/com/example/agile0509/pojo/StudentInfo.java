package com.example.agile0509.pojo;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

/**
 * @author Junzhe
 * @ClassName ScoreSum
 * @date 2023/5/17 15:53
 */

/**
 * @author YuanYue
 * @ClassName ScoreSum
 * 将带有下划线的字段如school_ID中下划线均删除了，不然未导致生成对象后对应字段读取为null的情况
 */

@Data
public class StudentInfo {
    @TableId(value = "studentID", type = IdType.AUTO)
    @ExcelProperty(value = "studentID", index = 0)
    private Integer studentID;

    @ExcelProperty(value = "name", index = 1)
    private String name;

    @ExcelProperty(value = "EnglishName", index = 2)
    private String EnglishName;

    @ExcelProperty(value = "social_ID", index = 3)
    private String socialID;

    @ExcelProperty(value = "stuNo", index = 4)
    private String stuNo;

    @ExcelProperty(value = "gender", index = 5)
    private String gender;

    @ExcelProperty(value = "phone", index = 6)
    private String phone;

    @ExcelProperty(value = "email", index = 7)
    private String email;

    @ExcelProperty(value = "year", index = 8)
    private String year;

    @ExcelProperty(value = "school_ID", index = 9)
    private Integer schoolID;

    @ExcelProperty(value = "place", index = 10)
    private String place;

    @ExcelProperty(value = "nationality", index = 11)
    private String nationality;

    @ExcelProperty(value = "birthday", index = 12)
    private String birthday;

    @ExcelProperty(value = "majorID", index = 13)
    private Integer majorID;

    @ExcelProperty(value = "political", index = 14)
    private String political;

    @ExcelProperty(value = "stu_type", index = 15)
    private String stutype;

}
