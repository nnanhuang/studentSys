package com.example.agile0509.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.agile0509.pojo.ScoreSum;
import com.example.agile0509.mapper.ScoreSumMapper;
import com.example.agile0509.service.IScoreSumService;
import com.example.agile0509.vo.ScoreSumVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Junzhe
 * @ClassName IScoreSumService
 * 成绩汇总表 服务类
 * @date 2023/5/17 16:10
 */
@Service
public class ScoreSumService extends ServiceImpl<ScoreSumMapper, ScoreSum> implements IScoreSumService {
    @Autowired
    private ScoreSumMapper scoreSumMapper;

    @Override
    public List<ScoreSumVo> findScoreSumVo(){
        return scoreSumMapper.findScoreSumVo();
    }
}
