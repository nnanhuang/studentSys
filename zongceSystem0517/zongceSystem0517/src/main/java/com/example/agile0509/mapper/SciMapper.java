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

    List<SciVo> getSciByStuId(String stuId);

    void insertSci(String stuId, String type, String content);

    void modifySci(Integer sciId, String type, String content);

    void deleteSci(Integer sciId);
}
