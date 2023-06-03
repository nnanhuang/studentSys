package com.example.agile0509.controller;

import com.example.agile0509.toExcel.GpaExcelComponent;
import io.swagger.annotations.Api;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
@RequestMapping("/gpa")
@ResponseBody //这样才能返回相应的对象
public class GpaController {
    @Resource
    private GpaExcelComponent gpaExcelComponent;

    @PostMapping("/upload")
    public Boolean updown(@RequestParam("file") MultipartFile file) throws IOException {
        gpaExcelComponent.importConsumerFile(file);
        return true;
    }
}
