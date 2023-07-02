package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.ScoreSumMapper;
import com.example.agile0509.mapper.VolunteerMapper;
import com.example.agile0509.pojo.VolunteerService;
import com.example.agile0509.toExcel.VolunExcelComponent;
import io.swagger.annotations.Api;
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
 * @ClassName ScoreSumController
 * @date 2023/5/17 16:06
 */
@Controller
@Api(tags = "演示接口")
@RequestMapping("/volun")
@ResponseBody //这样才能返回相应的对象
public class VolunController {
    @Resource
    private VolunExcelComponent volunExcelComponent;

    @Resource
    private VolunteerMapper volunteerMapper;

    @Resource
    private ScoreSumMapper scoreSumMapper;

    @PostMapping("/upload")
    public Boolean importFile(@RequestParam("file") MultipartFile file) throws IOException {
        volunExcelComponent.importFile(file);
        updateIntoSum();
        return true;
    }

    @RequestMapping("/updateToScoreSum")
    public void updateIntoSum(){
        List<VolunteerService> volunList = volunteerMapper.getVolunteers();
        for(VolunteerService volun: volunList){
            int studentId = volun.getStudentId();
            double duration = volun.getDuration();
            scoreSumMapper.updateVolun(studentId, duration);
        }
    }

    @RequestMapping("/getList")
    public CommonResult<List<VolunteerService>> toList(){
        //System.out.println(scoreSumService.findScoreSumVo());
        List<VolunteerService> volunList = volunteerMapper.getVolunteers();
        return CommonResult.success(volunList);

    }

    @RequestMapping("/delete")
    public void deleteAll(){
        volunteerMapper.deleteAll();
    }
}
