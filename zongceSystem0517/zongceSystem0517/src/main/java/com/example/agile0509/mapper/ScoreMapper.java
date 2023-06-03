package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.Score;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ScoreMapper extends BaseMapper<Score>,BatchInsertMapper<Score>{

    String getGpaByStudentId(Integer studentId);

    List<Score> getScores();

    void updateScore(Integer id, String gpa, String newgpa);
}
