package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.Score;
import com.example.agile0509.vo.StuSocialScoreVo;
import com.example.agile0509.vo.StudentInfoVo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface SocialScoreMapper extends BaseMapper<Score> {
    List<StuSocialScoreVo> getSocialScoreInfo();
    void updateInsertScore(Integer studentId,Float socialScore);
}
