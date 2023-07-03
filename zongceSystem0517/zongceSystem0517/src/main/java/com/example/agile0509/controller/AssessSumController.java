package com.example.agile0509.controller;
import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.*;
import com.example.agile0509.pojo.Sta;

import com.example.agile0509.pojo.StuSumScore;
import com.example.agile0509.pojo.StudentInfo;

import com.example.agile0509.vo.StaVo;

import com.example.agile0509.vo.StuSumScoreVo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Api(tags = "演示接口")
@RequestMapping("/sta")
@ResponseBody //这样才能返回相应的对象

public class AssessSumController {


    @Autowired
    private StuSumScoreMapper stuSumScoreMapper;

    @Autowired
    private StudentInfoMapper studentInfoMapper;

    @Autowired
    private StaMapper staMapper;

    /**
     * 查看分数
     */
    @PostMapping("/viewStuScore")
    public CommonResult<List<StuSumScoreVo>> viewStuSumScore(){
        List<StuSumScoreVo> list = stuSumScoreMapper.getSumScoreInfo();
        return CommonResult.success(list);
    }

    /**
     * 查看的记录
     */
    @PostMapping("/viewSubmittedT")
    public CommonResult<List<StaVo>> viewStaT(@RequestBody StuSumScore SSS) {
        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(SSS.getStuNo());
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();


        List<StaVo> StaVoList= staMapper.getStaByStuId(studentID);
        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(StaVoList);
    }
    /**
     * 提交分数
     */
    @PostMapping("/submitScore")
    public CommonResult<String> submitSumScore(@RequestBody StuSumScore SSS)  {
        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(SSS.getStuNo());
        System.out.println("aaaaaaaa  "+SSS.getStuNo());
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();
        stuSumScoreMapper.updateSumInsertScore(studentID, SSS.getSumScore());


        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("已成功提交个人总结分数");
    }
}
