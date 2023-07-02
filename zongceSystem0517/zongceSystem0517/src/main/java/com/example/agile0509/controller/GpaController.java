package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.ScoreMapper;
import com.example.agile0509.mapper.ScoreSumMapper;
import com.example.agile0509.pojo.Score;
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
import java.util.List;

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

    @Resource
    private ScoreMapper scoreMapper;

    @Resource
    private ScoreSumMapper scoreSumMapper;

    @PostMapping("/upload")
    public Boolean updown(@RequestParam("file") MultipartFile file) throws IOException {
        gpaExcelComponent.importConsumerFile(file);
        updateIntoSum();
        return true;
    }

    @RequestMapping("/updateToScoreSum")
    public void updateIntoSum(){
        List<Score> scoreList = scoreMapper.getScores();
        for(Score score: scoreList){
            int studentId = score.getStudentId();
            double gpa = Double.parseDouble(score.getScore());
            scoreSumMapper.updateScore(studentId, gpa);
        }
    }

    @RequestMapping("/getList")
    public CommonResult<List<Score>> toList(){
        //System.out.println(scoreSumService.findScoreSumVo());
        List<Score> gpaList = scoreMapper.getScores();
        return CommonResult.success(gpaList);

    }

    @RequestMapping("/delete")
    public void deleteAll(){
        scoreMapper.deleteAll();
    }
}
