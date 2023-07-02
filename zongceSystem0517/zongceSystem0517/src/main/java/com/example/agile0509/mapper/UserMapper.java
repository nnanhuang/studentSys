package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @author YuanYue
 * @ClassName UserMapper
 * 通过用户名创建User对象
 */

@Mapper
@Repository
public interface UserMapper extends BaseMapper<User>,BatchInsertMapper<User>{
    User findByUsername(String username);

    @Select("SELECT id FROM user WHERE username=#{username}")
    int getUserIdByUsername(String username);


}
