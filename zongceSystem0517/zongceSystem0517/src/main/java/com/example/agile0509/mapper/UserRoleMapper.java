package com.example.agile0509.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.Role;
import com.example.agile0509.pojo.UserRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserRoleMapper extends BaseMapper<UserRole>,BatchInsertMapper<UserRole>{

    @Select("SELECT r.name FROM role r INNER JOIN user_roles ur ON r.id = ur.role_id WHERE ur.user_id = #{userId}")
    List<Role> getRolesByUserId(int userId);

    List<UserRole> getUserRole();
}
