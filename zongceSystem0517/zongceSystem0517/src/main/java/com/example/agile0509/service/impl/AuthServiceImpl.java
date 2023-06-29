package com.example.agile0509.service.impl;


import com.example.agile0509.mapper.NodeMapper;
import com.example.agile0509.mapper.RoleMapper;
import com.example.agile0509.mapper.UserMapper;
import com.example.agile0509.mapper.UserRoleMapper;
import com.example.agile0509.pojo.Menu;
import com.example.agile0509.pojo.Node;
import com.example.agile0509.pojo.Role;
import com.example.agile0509.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class AuthServiceImpl implements AuthService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserRoleMapper userroleMapper;

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private NodeMapper nodeMapper;


    public AuthServiceImpl(UserMapper userMapper, UserRoleMapper userroleMapper) {
        this.userMapper = userMapper;
        this.userroleMapper = userroleMapper;
    }

    @Override
    public int getUserIdByUsername(String username) {
        // 调用UserMapper中的方法查询用户ID
        return userMapper.getUserIdByUsername(username);
    }

    @Override
    public List<Role> getRolesByUserId(int userId) {
        // 调用UserMapper和UserRoleMapper中的方法查询用户角色
        return userroleMapper.getRolesByUserId(userId);
    }

    @Override
    public List<Node> getMenuByRoleId(int roleId) {
        return nodeMapper.findNodesByRoleId(roleId);
    }

    @Override
    public List<Menu> convertToMenus(List<Node> nodes) {
        Map<Integer, Menu> menuMap = new HashMap<>();
        List<Menu> topLevelMenus = new ArrayList<>();


        for (Node node : nodes) { // 第一次遍历，创建菜单项和顶级菜单
            int nodeId = node.getId();
            int parentId = node.getParentId();//在Mysql数据库里默认为null的取出后默认为0

            // 创建菜单项
            Menu menu = new Menu(
                    parentId == 0 ? node.getIcon() : null,
                    node.getIndex(),
                    node.getTitle(),
                    String.valueOf(node.getPermiss()),
                    new ArrayList<>()
            );

            if (parentId == 0) {
                // 顶级菜单
                topLevelMenus.add(menu);
            }
            menuMap.put(nodeId, menu);//确定菜单中的父子关系，如果不先遍历一遍，若node顺序打乱后传入则容易出现将覆盖的情况
        }

        // 第二次遍历，建立菜单之间的父子关系
        for (Node node : nodes) {
            int nodeId = node.getId();
            int parentId = node.getParentId();

            if (parentId != 0) {
                Menu parentMenu = menuMap.get(parentId);
                if (parentMenu != null) {
                    Menu menu = menuMap.get(nodeId);
                    parentMenu.getSubs().add(menu);
                }
            }
        }
        /*
            } else {
                // 子级菜单
                if (!menuMap.containsKey(parentId)) {
                    // 创建父级菜单项
                    Menu parentMenu = new Menu(null, null, null, null, new ArrayList<>());
                    menuMap.put(parentId, parentMenu);
                }
                menuMap.get(parentId).getSubs().add(menu);
                //System.out.println(111);
                //System.out.println(menuMap);
            }

            menuMap.put(nodeId, menu);
            //System.out.println(222);
            //System.out.println(menuMap);
        }
        */

        // 移除空的subs字段
        for (Menu topLevelMenu : topLevelMenus) {
            removeEmptySubs(topLevelMenu);
        }

        return topLevelMenus;
    }

    //当Menu中subs为空时，不展示空列表
    private void removeEmptySubs(Menu menu) {
        List<Menu> subs = menu.getSubs();
        if (subs.isEmpty()) {
            menu.setSubs(null);
        } else {
            for (Menu subMenu : subs) {
                removeEmptySubs(subMenu);
            }
        }
    }

}


