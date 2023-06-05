package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.ServePositionMapper;
import com.example.agile0509.mapper.StuOrgScoreMapper;
import com.example.agile0509.mapper.StudentInfoMapper;
import com.example.agile0509.pojo.ServePosition;
import com.example.agile0509.pojo.StuOrgScore;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.vo.ServePositionVo;
import com.example.agile0509.vo.SocialVo;
import com.example.agile0509.vo.StuOrgScoreVo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Api(tags = "演示接口")
@RequestMapping("/servePosition")
@ResponseBody //这样才能返回相应的对象
public class assessOrgController {

    @Autowired
    private StuOrgScoreMapper stuOrgScoreMapper;

    @Autowired
    private StudentInfoMapper studentInfoMapper;

    @Autowired
    private ServePositionMapper servePositionMapper;




    /**
     * 查看学生骨干服务score的自定义记录
     */
    @PostMapping("/viewStuScore")
    public CommonResult<List<StuOrgScoreVo>> viewStuOrgScore(){
        List<StuOrgScoreVo> list = stuOrgScoreMapper.getOrgScoreInfo();
        return CommonResult.success(list);
    }

    /**
     * 查看的记录，可复用之前代码
     */
    @PostMapping("/viewSubmittedT")
    public CommonResult<List<ServePositionVo>> viewServePositionT(@RequestBody StuOrgScore SOS) {
        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(SOS.getStuNo());
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();
        List<ServePositionVo> servePositionVoList= servePositionMapper.getServePositionByStuId(studentID);
        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(servePositionVoList);
    }
    /**
     * 提交骨干服务分数
     */
    @PostMapping("/submitScore")
    public CommonResult<String> submitOrgScore(@RequestBody StuOrgScore SOS)  {
        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(SOS.getStuNo());
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();
        stuOrgScoreMapper.updateOrInsertScore(studentID, SOS.getOrgScore());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("已成功提交骨干服务分数");
    }

}
