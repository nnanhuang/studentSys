package com.example.agile0509.controller;

import com.example.agile0509.toExcel.UserRoleExcelComponent;
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
 * @ClassName UserRoleController
 * @date 2023/7/2 0:19
 */
@Controller
@RequestMapping("/userRole")
@ResponseBody //这样才能返回相应的对象
public class UserRoleController {
    @Resource
    private UserRoleExcelComponent userRoleExcelComponent;

    @PostMapping("/upload")
    public Boolean importFile(@RequestParam("file") MultipartFile file) throws IOException {
        userRoleExcelComponent.importFile(file);
        return true;
    }
}
