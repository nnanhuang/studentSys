package com.example.agile0509.service;

import com.example.agile0509.pojo.*;

import java.util.List;

public interface AuthService {
    int getUserIdByUsername(String username);
    List<Role> getRolesByUserId(int userId);
    List<Node> getMenuByRoleId(int roleId);
    List<Menu> convertToMenus(List<Node> nodes);
    List<Router> convertToRouters(List<Node> nodes);
    List<Permission> getPermissionsByUserId(int userId);
}
