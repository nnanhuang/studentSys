package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.StudentInfoMapper;
import com.example.agile0509.service.impl.StudentInfoService;
import com.example.agile0509.toExcel.ExcelComponent;
import com.example.agile0509.toExcel.ExcelExportHandle;
import com.example.agile0509.vo.ScoreSumVo;
import com.example.agile0509.vo.StudentInfoVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

/**
 * @author Junzhe
 * @ClassName ScoreSumController
 * @date 2023/5/17 16:06
 */
@Controller
@Api(tags = "演示接口")
@RequestMapping("/studentInfo")
@ResponseBody //这样才能返回相应的对象
public class StudentInfoController {
    @Autowired
    private StudentInfoMapper studentInfoMapper;

    @Resource
    private ExcelComponent excelComponent;


    @PostMapping("/upload")
    public Boolean updown(@RequestParam("file") MultipartFile file) throws IOException {
        excelComponent.importConsumerFile(file);
        return true;
    }

    @RequestMapping("/getList")
    public CommonResult<List<StudentInfoVo>> toList(){
        //System.out.println(scoreSumService.findScoreSumVo());
        List<StudentInfoVo> studentInfoList = studentInfoMapper.findStudentInfoVo();
        return CommonResult.success(studentInfoList);

    }
}
