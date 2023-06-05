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

@Data
public class ScoreSum {
//    @TableId(value = "id", type = IdType.AUTO)
//    @ExcelProperty(value = "id", index = 0)
//    private Integer id;

    @TableId(value = "id", type = IdType.AUTO)
    @ExcelProperty(value = "studentId", index = 1)
    private Integer studentId;

    /**
     * 社会实践成绩
     */
    @ExcelProperty(value = "socialScore", index = 2)
    private Integer socialScore;


    /**
     * 科研情况成绩
     */
    @ExcelProperty(value = "sciScore", index = 3)
    private Integer sciScore;

    /**
     * 志愿服务成绩
     */
    @ExcelProperty(value = "volunteerScore", index = 4)
    private Integer volunteerScore;

    /**
     * 学生骨干服务成绩
     */
    @ExcelProperty(value = "orgScore", index = 5)
    private Integer orgScore;

    /**
     * 个人总结成绩
     */
    @ExcelProperty(value = "sumScore", index = 6)
    private Integer sumScore;

    /**
     * 学习成绩（GPA）
     */
    @ExcelProperty(value = "studyScore", index = 7)
    private Integer studyScore;

    /**
     * 最终成绩
     */
    @ExcelProperty(value = "finalScore", index = 8)
    private Integer finalScore;

}
