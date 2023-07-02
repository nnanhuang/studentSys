package com.example.agile0509.pojo;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class VolunteerService {
    @TableId(value = "id", type = IdType.AUTO)
    @ExcelProperty(value = "id", index = 0)
    private Integer id;

    @ExcelProperty(value = "studentId", index = 1)
    public Integer studentId;

    @ExcelProperty(value = "duration", index = 2)
    public Double duration;

    public Boolean status;

}
