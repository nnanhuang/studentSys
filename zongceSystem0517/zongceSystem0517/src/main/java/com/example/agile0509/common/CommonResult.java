package com.example.agile0509.common;

/**
 * @author Junzhe
 * @ClassName CommonResult
 * @date 2023/5/9 15:54
 */
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
public class CommonResult<T> implements Serializable {

    @ApiModelProperty(value = "返回代码", required = true,example = "200")
    private Integer code;
    @ApiModelProperty(example = "操作成功")
    private String msg;
    private T data;


    public static <T> CommonResult<T> success(T data) {
        CommonResult<T> result = new CommonResult<>();
        result.code = 200;
        result.data = data;
        result.msg = "操作成功";
        return result;
    }

    public static <T> CommonResult<T> error(Integer code, String message) {
        CommonResult<T> result = new CommonResult<>();
        result.code = code;
        result.msg = message;
        return result;
    }
}
