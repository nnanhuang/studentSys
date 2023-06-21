package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.vo.StudentGPAVo;
import com.example.agile0509.vo.StudentVolunVo;
import com.example.agile0509.mapper.ScoreMapper;
import com.example.agile0509.mapper.StudentInfoMapper;
import com.example.agile0509.mapper.UserMapper;
import com.example.agile0509.mapper.VolunteerMapper;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.pojo.User;
import com.example.agile0509.utils.JwtTokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/stu/")
public class StudentCheckController {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private StudentInfoMapper studentInfoMapper;

    @Autowired
    private ScoreMapper scoreMapper;

    @Autowired
    private VolunteerMapper volunteerMapper;


    @Autowired
    private JwtTokenUtil jwtTokenUtil;


    @GetMapping("/getStuGPA")
    public CommonResult<?> getStudentGPA(@RequestHeader("Authorization") String authHeader) {

        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String username = jwtTokenUtil.getUsernameFromToken(token);

        User foundUser = userMapper.findByUsername(username);

        // 通过用户名找到学生学号
        String stuId = foundUser.getUsername();

        // 通过学号在学生信息表中找到学年和学生ID
        StudentInfo studentInfo = studentInfoMapper.getStudentInfoByStuId(stuId);
        String year = studentInfo.getYear();

        // 通过学生ID在学生成绩表中找到学生GPA
        String gpa=scoreMapper.getGpaByStudentId(studentInfo.getStudentID());

        // 创建 StudentInfoVO 对象
        StudentGPAVo studentGPAVo = new StudentGPAVo(stuId, year, gpa);

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(studentGPAVo);
    }

    @GetMapping("/getStuVolunteer")
    public CommonResult<?> getStudentVolun(@RequestHeader("Authorization") String authHeader) {

        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String username = jwtTokenUtil.getUsernameFromToken(token);

        User foundUser = userMapper.findByUsername(username);

        // 通过用户名找到学生学号
        String stuId = foundUser.getUsername();

        // 通过学号在学生信息表中找到学年和学生ID
        StudentInfo studentInfo = studentInfoMapper.getStudentInfoByStuId(stuId);
        String year = studentInfo.getYear();

        // 通过学生ID在学生成绩表中找到学生GPA
        double time = volunteerMapper.getTimeByStudentId(studentInfo.getStudentID());

        // 创建 StudentInfoVO 对象
        StudentVolunVo studentVolunVo = new StudentVolunVo(stuId, year, time);

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(studentVolunVo);
    }
}
