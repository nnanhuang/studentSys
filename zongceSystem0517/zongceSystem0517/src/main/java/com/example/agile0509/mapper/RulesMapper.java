package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.Rule;
import com.example.agile0509.pojo.Score;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface RulesMapper extends BaseMapper<Score>{

    void changeRules(double gpa,double gpaLimit,double volun,double volunLimit,double sci,double sciLimit,double org,double orgLimit,double social,double socialLimit,double sum,double sumLimit);

    Rule getRules();
}
