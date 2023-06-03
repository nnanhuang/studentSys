package com.example.agile0509.controller;

import com.example.agile0509.toExcel.StuInfoExcelComponent;
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
@RequestMapping("/volun")
@ResponseBody //这样才能返回相应的对象
public class VolunController {
    @Resource
    private StuInfoExcelComponent stuInfoExcelComponent;

    @PostMapping("/upload")
    public Boolean updown(@RequestParam("file") MultipartFile file) throws IOException {
        stuInfoExcelComponent.importConsumerFile(file);
        return true;
    }
}
