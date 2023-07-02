package com.example.agile0509.controller;

import com.example.agile0509.mapper.RulesMapper;
import com.example.agile0509.mapper.ScoreSumMapper;
import com.example.agile0509.pojo.Rule;
import com.example.agile0509.service.impl.ScoreSumService;
import com.example.agile0509.toExcel.ExcelExportHandle;
import com.example.agile0509.vo.ScoreSumVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author Junzhe
 * @ClassName ScoreSumController
 * @date 2023/5/17 16:06
 */
@Controller
@Api(tags = "演示接口")
@RequestMapping("/scoreSum")
@ResponseBody //这样才能返回相应的对象
public class ScoreSumController {
    @Autowired
    private ScoreSumService scoreSumService;

    @Autowired
    private ScoreSumMapper scoreSumMapper;

    @Autowired
    private RulesMapper rulesMapper;

    @Resource
    private ExcelExportHandle excelExportHandle;

    @RequestMapping("/getList")
    @ApiOperation("Hello World接口")
    public List<ScoreSumVo> toList(){
        //System.out.println(scoreSumService.findScoreSumVo());
        return scoreSumService.findScoreSumVo();
    }

    @GetMapping("/download")
    public void down2(HttpServletResponse response){
        //从数据库中取出导出的数据
        List<ScoreSumVo> list = scoreSumService.findScoreSumVo();;
        System.out.println(list);
        excelExportHandle.export(response, "学生成绩汇总表", list, ScoreSumVo.class);
    }

    @RequestMapping("/compute")
    public void compute(){
        List<ScoreSumVo> scoreSums = scoreSumMapper.findScoreSumVo();
        for(ScoreSumVo scoreSum : scoreSums){
            Integer sumScore = scoreSum.getSumScore();
            Integer orgScore = scoreSum.getOrgScore();
            Integer sciScore = scoreSum.getSciScore();
            Integer socialScore = scoreSum.getSocialScore();
            double studyScore = scoreSum.getStudyScore();
            Integer volunteerScore = scoreSum.getVolunteerScore();
            Integer studentId = scoreSum.getStudentId();

            Rule rule = rulesMapper.getRules();

            double finalScore = rule.getGpa() * studyScore + rule.getVolun() * volunteerScore +
                    rule.getSci() * sciScore + rule.getOrg() * orgScore + rule.getSocial() * socialScore +
                    rule.getSum() * sumScore;

            scoreSumMapper.updateFinalScore(studentId, finalScore);
        }
    }
}
