package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.UserRoleMapper;
import com.example.agile0509.pojo.UserRole;
import com.example.agile0509.toExcel.UserRoleExcelComponent;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

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

    @Resource
    private UserRoleMapper userRoleMapper;

    @PostMapping("/upload")
    public Boolean importFile(@RequestParam("file") MultipartFile file) throws IOException {
        userRoleExcelComponent.importFile(file);
        return true;
    }

    @RequestMapping("/getList")
    public CommonResult<List<UserRole>> toList(){
        //System.out.println(scoreSumService.findScoreSumVo());
        List<UserRole> userRoleList = userRoleMapper.getUserRole();
        return CommonResult.success(userRoleList);
    }
}
