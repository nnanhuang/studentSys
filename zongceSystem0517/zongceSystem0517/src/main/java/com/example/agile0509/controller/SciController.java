package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.SciMapper;
import com.example.agile0509.mapper.SciScoreMapper;
import com.example.agile0509.mapper.StudentInfoMapper;
import com.example.agile0509.pojo.*;
import com.example.agile0509.utils.JwtTokenUtil;
import com.example.agile0509.vo.*;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author Junzhe
 * @ClassName SciController
 * @date 2023/5/29 18:34
 */

@Controller
@Api(tags = "演示接口")
@RequestMapping("/sci")
@ResponseBody //这样才能返回相应的对象
public class SciController {
    @Autowired
    private SciMapper sciMapper;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private StudentInfoMapper studentInfoMapper;

    @Autowired
    private SciScoreMapper sciScoreMapper;

    /**
     * 新增科研记录
     */
    @PostMapping("/add")
    public CommonResult<String> addSci(@RequestHeader("Authorization") String authHeader, @RequestBody Sci sci) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);

        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(stuId);
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();//这里的studentID是学生信息表ID，是主键

        System.out.println(sci);
        if(sci.getType().equals("") || sci.getContent().equals("")|| sci.getMaterial().equals("")){
            return CommonResult.error(500121, "不能提交空记录");
        } else {
            sciMapper.insertSci(studentID, sci.getType(),sci.getContent(),sci.getMaterial());
        }

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("科研经历提交成功");
    }

    /**
     * 查看已提交的科研记录
     */
    @PostMapping("/viewSubmitted")
    public CommonResult<List<SciVo>> viewSci(@RequestHeader("Authorization") String authHeader) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);

        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(stuId);
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();//这里的studentID是学生信息表ID，是主键

        List<SciVo> sciList = sciMapper.getSciByStuId(studentID);

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(sciList);
    }

    /**
     * 删除科研记录
     */
    @PostMapping("/delete")
    public CommonResult<String> deleteSci(@RequestBody SciVo sciVo) {
        sciMapper.deleteSci(sciVo.getId());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已删除");
    }

    /**
     * 修改科研记录
     */
    @PostMapping("/modify")
    public CommonResult<String> modifySci(@RequestBody Sci sci) {
//        System.out.println(sci.getContent());
//        System.out.println(sci.getType());
//        System.out.println(sci.getId());
        sciMapper.modifySci(sci.getId(),sci.getType(),sci.getContent(),sci.getMaterial());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已删除");
    }

    @PostMapping("/viewScoreInfo")
    public CommonResult<List<SciScoreVo>> viewScoreInfo(){
        List<SciScoreVo> list = sciScoreMapper.getSciScoreInfo();
        return CommonResult.success(list);
    }

    /**
     * 查看的记录，可复用之前代码
     */
    @PostMapping("/viewSubmittedT")
    public CommonResult<List<SciVo>> viewServePositionT(@RequestBody SciScore sciScore) {
        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(sciScore.getStuNo());
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();
        List<SciVo> sciVoList= sciMapper.getSciByStuId(studentID);
        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(sciVoList);
    }
    /**
     * 提交骨干服务分数
     */
    @PostMapping("/submitScore")
    public CommonResult<String> submitOrgScore(@RequestBody SciScore sciScore)  {
        StudentInfo stuInfo = studentInfoMapper.getStudentInfoByStuId(sciScore.getStuNo());
        if (stuInfo == null) {
            // 处理studentInfo为空的情况，例如抛出异常或返回错误结果
            return CommonResult.error(404,"学生信息不存在");
        }
        int studentID = stuInfo.getStudentID();
        sciScoreMapper.updateOrInsertScore(studentID, sciScore.getSciScore());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("已成功提交科研经历分数");
    }
}


