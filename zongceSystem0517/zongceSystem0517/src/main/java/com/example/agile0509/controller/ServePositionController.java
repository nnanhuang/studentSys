package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.ServePositionMapper;
import com.example.agile0509.mapper.StudentInfoMapper;
import com.example.agile0509.pojo.ServePosition;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.utils.JwtTokenUtil;
import com.example.agile0509.vo.ServePositionVo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Api(tags = "演示接口")
@RequestMapping("/servePosition")
@ResponseBody //这样才能返回相应的对象
public class ServePositionController {
    @Autowired
    private ServePositionMapper ServePositionMapper;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private StudentInfoMapper studentInfoMapper;

    /**
     * 新增骨干服务记录
     */
    @PostMapping("/add")
    public CommonResult<String> addServePosition(@RequestHeader("Authorization") String authHeader, @RequestBody ServePosition ServePosition) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);//这里的stuID是学号

        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(stuId);
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();//这里的studentID是学生ID，是主键

        if(ServePosition.getTime().equals("") || ServePosition.getContent().equals("")){
            return CommonResult.error(500121, "不能提交空记录");
        } else {
            ServePositionMapper.insertServePosition(studentID, ServePosition.getTime(),ServePosition.getContent());
        }
        return CommonResult.success("骨干服务经历提交成功");
    }

    /**
     * 查看已提交的骨干服务记录
     */
    @PostMapping("/viewSubmitted")
    public CommonResult<List<ServePositionVo>> viewServePosition(@RequestHeader("Authorization") String authHeader) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);

        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(stuId);
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();//这里的studentID是学生ID，是主键

        List<ServePositionVo> ServePositionList = ServePositionMapper.getServePositionByStuId(studentID);

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(ServePositionList);
    }

    /**
     * 删除骨干服务记录
     */
    @PostMapping("/delete")
    public CommonResult<String> deleteServePosition(@RequestBody ServePositionVo ServePositionVo) {
        ServePositionMapper.deleteServePosition(ServePositionVo.getId());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已删除");
    }

    /**
     * 修改骨干服务记录
     */
    @PostMapping("/modify")
    public CommonResult<String> modifyServePosition(@RequestBody ServePosition ServePosition) {
//        System.out.println(ServePosition.getContent());
//        System.out.println(ServePosition.getTime());
//        System.out.println(ServePosition.getId());
        ServePositionMapper.modifyServePosition(ServePosition.getId(),ServePosition.getTime(),ServePosition.getContent());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已删除");
    }

}


