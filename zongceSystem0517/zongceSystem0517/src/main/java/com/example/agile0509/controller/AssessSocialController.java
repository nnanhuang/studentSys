package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.SocialMapper;
import com.example.agile0509.mapper.SocialScoreMapper;
import com.example.agile0509.mapper.StudentInfoMapper;
import com.example.agile0509.pojo.Social;
import com.example.agile0509.pojo.StuSocialScore;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.vo.SocialVo;
import com.example.agile0509.vo.StuSocialScoreVo;
import com.example.agile0509.vo.StudentInfoVo;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Api(tags = "演示接口")
@RequestMapping("/social")
@ResponseBody //这样才能返回相应的对象
public class AssessSocialController {
    @Autowired
    private SocialMapper socialMapper;
    @Autowired
    private SocialScoreMapper socialScoreMapper;
    @Autowired
    private StudentInfoMapper studentInfoMapper;

    /**
     * 查看学生社会实践的自定义记录
     */
    @PostMapping("/viewStuScore")
    public CommonResult<List<StuSocialScoreVo>> viewStuSocialScore() {
        List<StuSocialScoreVo> list = socialScoreMapper.getSocialScoreInfo();
        return CommonResult.success(list);
    }

    /**
     * 弹窗表，可复用之前代码
     */
    @PostMapping("/viewSubmittedT")
    public CommonResult<List<SocialVo>> viewSocialT(@RequestBody StuSocialScore stuSocialScore) {

        StudentInfo studentInfo = studentInfoMapper.getStudentInfoByStuId(stuSocialScore.getStuNo());
        if (studentInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        Integer stuId = studentInfo.getStudentID();
        List<SocialVo> socialList = socialMapper.getSocialByStuId(Integer.toString(stuId));
        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(socialList);
    }

    /**
     * 提交社会实践分数
     */
    @PostMapping("/submitSPSScore")
    public CommonResult<String> submitSPScore(@RequestBody StuSocialScore stuSocialScore) {
        StudentInfo studentInfo = studentInfoMapper.getStudentInfoByStuId(stuSocialScore.getStuNo());
        if (studentInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentId = studentInfo.getStudentID();
        System.out.println("1");
        socialScoreMapper.updateInsertScore(studentId,stuSocialScore.getSocialScore());
        System.out.println("2");
        return CommonResult.success("已成功提交");
    }
}
