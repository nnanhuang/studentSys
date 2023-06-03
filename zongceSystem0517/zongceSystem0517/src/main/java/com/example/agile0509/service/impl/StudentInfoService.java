package com.example.agile0509.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.agile0509.mapper.StudentInfoMapper;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.service.IStudentInfoService;
import com.example.agile0509.vo.StudentInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Junzhe
 * 学生信息表 服务类
 * @date 2023/5/17 16:10
 */
@Service
public class StudentInfoService extends ServiceImpl<StudentInfoMapper, StudentInfo> implements IStudentInfoService {
    @Autowired
    private StudentInfoMapper studentInfoMapper;

    @Override
    public List<StudentInfoVo> findStudentInfoVo(){
        return studentInfoMapper.findStudentInfoVo();
    }
}
