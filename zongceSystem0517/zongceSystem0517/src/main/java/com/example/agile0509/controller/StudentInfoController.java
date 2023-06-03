package com.example.agile0509.controller;

import com.example.agile0509.service.impl.StudentInfoService;
import com.example.agile0509.toExcel.ExcelComponent;
import com.example.agile0509.toExcel.ExcelExportHandle;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;

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
    private StudentInfoService studentInfoService;

    @Resource
    private ExcelComponent excelComponent;

    @Resource
    private ExcelExportHandle excelExportHandle;

    @PostMapping("/upload")
    public Boolean updown(@RequestParam("file") MultipartFile file) throws IOException {
        excelComponent.importConsumerFile(file);
        return true;
    }
}
