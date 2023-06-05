package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.Score;
import com.example.agile0509.vo.SciScoreVo;
import com.example.agile0509.vo.StuOrgScoreVo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface SciScoreMapper extends BaseMapper<Score>{
    List<SciScoreVo> getSciScoreInfo();

    void updateOrInsertScore(int studentID, Float score);

}

