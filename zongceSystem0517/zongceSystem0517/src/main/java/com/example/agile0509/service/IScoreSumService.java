package com.example.agile0509.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.agile0509.pojo.ScoreSum;
import com.example.agile0509.vo.ScoreSumVo;


import java.util.List;

/**
 * @author Junzhe
 * @ClassName IScoreSumService
 * 成绩汇总表 服务类
 * @date 2023/5/17 16:10
 */
public interface IScoreSumService extends IService<ScoreSum> {

    List<ScoreSumVo> findScoreSumVo();
}
