package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.InfoMapper;
import com.example.agile0509.mapper.ScoreMapper;
import com.example.agile0509.mapper.StudentInfoMapper;

import com.example.agile0509.mapper.VolunteerMapper;
import com.example.agile0509.pojo.Info;
import com.example.agile0509.pojo.ServePosition;
import com.example.agile0509.pojo.StudentInfo;

import com.example.agile0509.pojo.User;
import com.example.agile0509.utils.JwtTokenUtil;
import com.example.agile0509.vo.InfoVo;
import com.example.agile0509.vo.StudentGPAVo;
import com.example.agile0509.vo.StudentInfoVo;

import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Api(tags = "演示接口")
@RequestMapping("/info")
@ResponseBody //这样才能返回相应的对象
public class InfoController {

    @Autowired
    private StudentInfoMapper studentInfoMapper;

    @Autowired
    private InfoMapper infoMapper;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @GetMapping("/get")
    public CommonResult<?> getInfo(@RequestHeader("Authorization") String authHeader) {

        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);

        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(stuId);
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();//这里的studentID是学生ID，是主键


        // 创建 StudentInfoVO 对象
        List<InfoVo> InfoList = infoMapper.getInfoByStudentId(studentID);

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(InfoList);
    }

    @PostMapping("/update")
    public CommonResult<String> updateInfo(@RequestBody Info Info) {
//        System.out.println(ServePosition.getContent());
//        System.out.println(ServePosition.getTime());
//        System.out.println(ServePosition.getId());
        infoMapper.updateStuInfo(Info.getStuNo(),"",Info.getPhone(),Info.getEmail(),"");
        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("信息已修改");
    }
}
