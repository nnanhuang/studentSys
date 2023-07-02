package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.ServePositionMapper;
import com.example.agile0509.mapper.StaMapper;
//import com.example.agile0509.mapper.SciScoreMapper;
import com.example.agile0509.mapper.StudentInfoMapper;
import com.example.agile0509.pojo.*;
import com.example.agile0509.pojo.Sta;
import com.example.agile0509.utils.JwtTokenUtil;
import com.example.agile0509.vo.*;
import com.example.agile0509.vo.StaVo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Api(tags = "演示接口")
@RequestMapping("/sta")
@ResponseBody //这样才能返回相应的对象
public class StaController {
    @Autowired
    private com.example.agile0509.mapper.StaMapper StaMapper;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private StudentInfoMapper studentInfoMapper;

    /**
     * 新增
     */
    @PostMapping("/add")
    public CommonResult<String> addSta(@RequestHeader("Authorization") String authHeader, @RequestBody Sta Sta) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);//这里的stuID是学号

        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(stuId);
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();//这里的studentID是学生ID，是主键

        if(Sta.getType().equals("") || Sta.getContent().equals("") ){
            return CommonResult.error(500121, "不能提交空记录");
        } else {
           StaMapper.insertSta(studentID,Sta.getType(),Sta.getContent());
        }
        return CommonResult.success("提交成功");
    }

    /**
     * 查看
     */
    @PostMapping("/viewSubmitted")
    public CommonResult<List<StaVo>> viewSta (@RequestHeader("Authorization") String authHeader) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);

        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(stuId);
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();//这里的studentID是学生ID，是主键

        List<StaVo> StaList = StaMapper.getStaByStuId(studentID);

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(StaList);
    }
    /**
     * 删除
     */
    @PostMapping("/delete")
    public CommonResult<String> deleteSta(@RequestBody StaVo StaVo) {
        StaMapper.deleteSta(StaVo.getId());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已删除");
    }

    /**
     * 修改骨干服务记录
     */
    @PostMapping("/modify")
    public CommonResult<String> mofifySta(@RequestBody Sta Sta) {

      StaMapper.modifySta(Sta.getId(),Sta.getType(),Sta.getContent());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已修改");
    }

}