package com.example.agile0509.mapper;

import com.example.agile0509.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * @author YuanYue
 * @ClassName UserMapper
 * 通过用户名创建User对象
 */

@Mapper
@Repository
public interface UserMapper {
    User findByUsername(String username);
}
