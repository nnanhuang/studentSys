package com.example.agile0509.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author Junzhe
 * @ClassName LoginReqVO
 * @date 2023/5/9 15:23
 */
@Data
public class StuLoginVo {
    private String username;
    private String password;
}
