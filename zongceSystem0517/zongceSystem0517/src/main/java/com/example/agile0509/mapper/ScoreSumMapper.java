package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.ScoreSum;
import com.example.agile0509.vo.ScoreSumVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author Junzhe
 * @ClassName ScoreSumMapper
 * 成绩汇总表 Mapper接口
 * @date 2023/5/17 16:15
 */

@Mapper
public interface ScoreSumMapper extends BaseMapper<ScoreSum>,BatchInsertMapper<ScoreSum> {
    /**
     * 获取学生成绩信息的列表
     */
    List<ScoreSumVo> findScoreSumVo();
}
