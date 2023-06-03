package com.example.agile0509.controller;

/**
 * @author YuanYue
 * @ClassName AuthController
 * 前端登录控制器
 */

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.StudentInfoMapper;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.vo.LoginReqVO;
import com.example.agile0509.vo.StuLoginVo;
import com.example.agile0509.vo.TokenReqVO;
import com.example.agile0509.mapper.UserMapper;
import com.example.agile0509.pojo.User;
import com.example.agile0509.utils.JwtTokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
public class AuthController {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private StudentInfoMapper studentInfoMapper;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @PostMapping("/login")
    public CommonResult<?> login(@RequestBody StuLoginVo stuLogin) {
        System.out.println(stuLogin);
        StudentInfo studentInfo = studentInfoMapper.getStudentInfoByStuId(stuLogin.getUsername());

        if (studentInfo == null) {
            return CommonResult.error(50007, "登录失败，账号密码不正确");
        }

        if (!stuLogin.getPassword().equals(studentInfo.getSocialID())) {
            return CommonResult.error(50007, "登录失败，账号密码不正确");
        }

        //添加角色验证逻辑

        String username = stuLogin.getUsername();

        // 生成访问令牌和刷新令牌
        String accessToken = jwtTokenUtil.generateAccessToken(username);
        String refreshToken = jwtTokenUtil.generateRefreshToken(username);
        TokenReqVO token_resp = new TokenReqVO(accessToken, refreshToken);

        CommonResult<TokenReqVO> result = CommonResult.success(token_resp);

        return result;
    }
}
