package com.example.agile0509.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.vo.InfoVo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository

public interface InfoMapper extends BaseMapper{

    List<InfoVo> getInfoByStudentId(int studentID);

void updateStuInfo(     String stuNo,
     String gender,
     String phone,
     String email,
     String political);

}
