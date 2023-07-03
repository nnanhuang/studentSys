package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.Score;

import com.example.agile0509.vo.StuSumScoreVo;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository

public interface StuSumScoreMapper extends BaseMapper<Score>{
    List<StuSumScoreVo> getSumScoreInfo();
    void updateSumInsertScore(int studentID, Float score);
}
