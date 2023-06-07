package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.Sci;
import com.example.agile0509.pojo.Score;
import com.example.agile0509.vo.SciVo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface SciMapper extends BaseMapper<Score>{

    List<SciVo> getSciByStuId(int stuId);

    void insertSci(int stuId, String type, String content, String material);

    void modifySci(Integer sciId, String type, String content, String material);

    void deleteSci(Integer sciId);
}
