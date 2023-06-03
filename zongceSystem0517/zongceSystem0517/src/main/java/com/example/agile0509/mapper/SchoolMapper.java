package com.example.agile0509.mapper;

import com.example.agile0509.pojo.School;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface SchoolMapper {
    String findSchoolBySchoolId(int schoolId);
}
