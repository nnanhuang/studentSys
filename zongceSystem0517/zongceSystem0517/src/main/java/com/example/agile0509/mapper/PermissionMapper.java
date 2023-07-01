package com.example.agile0509.mapper;


import com.example.agile0509.pojo.Permission;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface PermissionMapper {

    @Select("SELECT p.title , p.url FROM permissions p INNER JOIN role_permissions rp ON p.id = rp.permission_id WHERE rp.role_id = #{roleId}")
    List<Permission> getPermissionsByRoleId(int roleId);

}
