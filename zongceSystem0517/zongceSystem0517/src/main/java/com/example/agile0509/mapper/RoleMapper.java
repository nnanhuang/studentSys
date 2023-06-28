package com.example.agile0509.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface RoleMapper {

        @Select("SELECT id FROM role WHERE name = #{name}")
        int getRoleIdByName(String name);
    }


