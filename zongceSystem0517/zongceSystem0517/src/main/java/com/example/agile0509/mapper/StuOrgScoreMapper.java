package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.Score;

import com.example.agile0509.vo.StuOrgScoreVo;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface StuOrgScoreMapper extends BaseMapper<Score>{
    List<StuOrgScoreVo> getOrgScoreInfo();

    void updateOrInsertScore(int studentID, Float score);

}

