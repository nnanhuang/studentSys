package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.Score;
import com.example.agile0509.vo.StaVo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface StaMapper extends BaseMapper<Score>{
    List<StaVo> getStaByStuId(int stuId);
    int insertSta(int stuId, String type, String content);
    void modifySta(Integer StaId, String type, String content);
    void deleteSta(Integer StaId);
}
