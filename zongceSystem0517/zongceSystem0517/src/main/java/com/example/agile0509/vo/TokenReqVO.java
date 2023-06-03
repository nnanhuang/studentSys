package com.example.agile0509.vo;

/**
 * @author YuanYue
 * @ClassName TokenReqVO
 * 前端登录控制器
 */

import lombok.Data;

@Data
public class TokenReqVO {
    private String accessToken;
    private String refreshToken;
    public TokenReqVO(String accessToken, String refreshToken) {
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
    }
}