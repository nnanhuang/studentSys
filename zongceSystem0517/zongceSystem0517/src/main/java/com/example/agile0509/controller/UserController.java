package com.example.agile0509.controller;


import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.RoleMapper;
import com.example.agile0509.mapper.UserMapper;
import com.example.agile0509.pojo.*;
import com.example.agile0509.service.impl.AuthServiceImpl;
import com.example.agile0509.toExcel.UserExcelComponent;
import com.example.agile0509.utils.JwtTokenUtil;
import com.example.agile0509.vo.RoleVO;
import io.jsonwebtoken.ExpiredJwtException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private AuthServiceImpl authService;

    @Autowired
    private UserExcelComponent userExcelComponent;


    @GetMapping("/get/role")
    public CommonResult<?> getRole(@RequestHeader("Authorization") String authHeader) {

        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String username = jwtTokenUtil.getUsernameFromToken(token);

        // 调用Authervice中的方法来获取用户ID
        int userId = authService.getUserIdByUsername(username);

        // 根据用户ID调用AuthService中的方法来获取用户角色
        List<Role> roles = authService.getRolesByUserId(userId);

        // 将Role转换为RoleVO
        List<RoleVO> roleVOList = new ArrayList<>();
        for (Role role : roles) {
            RoleVO roleVO = new RoleVO();
            roleVO.setRole(role.getName());
            roleVOList.add(roleVO);
        }

        // 封装结果并返回
        CommonResult<List<RoleVO>> result = CommonResult.success(roleVOList);
        return result;
    }


    @GetMapping("/get/router")
    public CommonResult<?> getRouter(@RequestHeader("Authorization") String authHeader) {

        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String username = null;
        try {
            String token = authHeader.substring(7);
            username = jwtTokenUtil.getUsernameFromToken(token);
        } catch (ExpiredJwtException e) {
            return CommonResult.error(410, "JWT expired");
        }

        // 调用Authervice中的方法来获取用户ID
        int userId = authService.getUserIdByUsername(username);

        // 根据用户ID调用AuthService中的方法来获取用户角色
        List<Role> roles = authService.getRolesByUserId(userId);

        // 构建包含角色和权限的结果对象
        List<Node> nodes = new ArrayList<>();
        Set<Integer> addedNodeIds = new HashSet<>(); // 用于存储已添加的节点ID
        for (Role role : roles) {

            //获取角色ID
            int roleId = roleMapper.getRoleIdByName(role.getName());

            List<Node> roleNodes = authService.getMenuByRoleId(roleId);

            for (Node node : roleNodes) {//如果直接add很有可能导致菜单重复
                if (!addedNodeIds.contains(node.getId())) {//获取所有type的node即为路由的node
                    nodes.add(node);
                    addedNodeIds.add(node.getId());
                }
            }
        }
        System.out.println(nodes);
        List<Router> router = authService.convertToRouters(nodes);
        CommonResult<List<Router>> result = CommonResult.success(router);
        return result;
    }


    @GetMapping("/get/menu")
    public CommonResult<?> getMenu(@RequestHeader("Authorization") String authHeader) {

        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String username = jwtTokenUtil.getUsernameFromToken(token);

        // 调用Authervice中的方法来获取用户ID
        int userId = authService.getUserIdByUsername(username);

        // 根据用户ID调用AuthService中的方法来获取用户角色
        List<Role> roles = authService.getRolesByUserId(userId);

        // 构建包含角色和权限的结果对象
        List<Node> nodes = new ArrayList<>();
        Set<Integer> addedNodeIds = new HashSet<>(); // 用于存储已添加的节点ID
        for (Role role : roles) {

            //获取角色ID
            int roleId = roleMapper.getRoleIdByName(role.getName());

            List<Node> roleNodes = authService.getMenuByRoleId(roleId);

            for (Node node : roleNodes) {//如果直接add很有可能导致菜单重复
                if (!addedNodeIds.contains(node.getId()) && node.getType()) {//获取type为true的node即为菜单的node
                    nodes.add(node);
                    addedNodeIds.add(node.getId());
                }
            }
        }
        System.out.println(nodes);
        List<Menu> menu = authService.convertToMenus(nodes);
            /*
            // 获取角色对应的权限列表
            List<Permission> permissions = authService.getMenusByRoleId(roleId,PermissionType.type1);
            // 遍历每个 Permission 对象，去除 URL 中的 \r
            for (Permission permission : permissions) {
                String cleanedUrl = permission.getUrl().replaceAll("\r", "");
                permission.setUrl(cleanedUrl);
            }

            // 构建角色权限对象，并将权限列表赋值
            RolePermissionVO rolePermission = new RolePermissionVO();
            rolePermission.setRole(role.getName());
            rolePermission.setPermissions(permissions);

            // 将角色权限对象添加到结果列表
            rolePermissions.add(rolePermission);

        }
        */
        // 封装结果并返回
        CommonResult<List<Menu>> result = CommonResult.success(menu);
        return result;
    }

    @PostMapping("/upload")
    public Boolean importFile(@RequestParam("file") MultipartFile file) throws IOException {
        userExcelComponent.importFile(file);
        return true;
    }

    @RequestMapping("/getList")
    public CommonResult<List<User>> toList() {
        //System.out.println(scoreSumService.findScoreSumVo());
        List<User> userList = userMapper.getUser();
        return CommonResult.success(userList);
    }

    @PostMapping("/password/update")
    public CommonResult<?> updatePwd(@RequestHeader("Authorization") String authHeader, @RequestParam("oldPwd") String oldPwd, @RequestParam("newPwd") String newPwd) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String username = jwtTokenUtil.getUsernameFromToken(token);

        User user = userMapper.findByUsername(username);
        if (!user.getPassword().equals(oldPwd)) {
            CommonResult result = CommonResult.error(411, "error old password");
            return result;
        }
        userMapper.updatePasswordByUsername(username, newPwd);
        CommonResult<User> result = CommonResult.success(user);
        return result;
    }

    @GetMapping("/username/get")
    public CommonResult<?> gerUsername(@RequestHeader("Authorization") String authHeader) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String username = jwtTokenUtil.getUsernameFromToken(token);
        CommonResult<String> result = CommonResult.success(username);
        return result;

    }
}
