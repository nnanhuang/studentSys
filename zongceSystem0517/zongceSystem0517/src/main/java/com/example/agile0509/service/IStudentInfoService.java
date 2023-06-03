package com.example.agile0509.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.vo.StudentInfoVo;

import java.util.List;

/**
 * @author Junzhe
 * @ClassName IStudentInfoService
 * 学生信息表 服务类
 * @date 2023/5/17 16:10
 */
public interface IStudentInfoService extends IService<StudentInfo> {

    List<StudentInfoVo> findStudentInfoVo();
}
