package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.vo.StudentInfoVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author Junzhe
 * @ClassName StudentInfoMapper
 * @date 2023/5/17 21:38
 */

/**
 * @author YuanYue
 * @ClassName StudentInfoMapper
 * 添加了两个get方法
 */
@Mapper
public interface StudentInfoMapper extends BaseMapper<StudentInfo>,BatchInsertMapper<StudentInfo> {
    List<StudentInfoVo> findStudentInfoVo();

    StudentInfo getStudentInfoByStuId(String stuId);

    StudentInfo getStudentInfoByStudentId(Integer studentId);
}
