package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.SciMapper;
import com.example.agile0509.pojo.Sci;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.pojo.User;
import com.example.agile0509.utils.JwtTokenUtil;
import com.example.agile0509.vo.LoginReqVO;
import com.example.agile0509.vo.SciVo;
import com.example.agile0509.vo.StudentGPAVo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author Junzhe
 * @ClassName SciController
 * @date 2023/5/29 18:34
 */

@Controller
@Api(tags = "演示接口")
@RequestMapping("/sci")
@ResponseBody //这样才能返回相应的对象
public class SciController {
    @Autowired
    private SciMapper sciMapper;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    /**
     * 新增科研记录
     */
    @PostMapping("/add")
    public CommonResult<String> addSci(@RequestHeader("Authorization") String authHeader, @RequestBody Sci sci) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);

        System.out.println(sci);
        if(sci.getType().equals("") || sci.getContent().equals("")){
            return CommonResult.error(500121, "不能提交空记录");
        } else {
            sciMapper.insertSci(stuId, sci.getType(),sci.getContent());
        }

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("科研经历提交成功");
    }

    /**
     * 查看已提交的科研记录
     */
    @PostMapping("/viewSubmitted")
    public CommonResult<List<SciVo>> viewSci(@RequestHeader("Authorization") String authHeader) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);

        List<SciVo> sciList = sciMapper.getSciByStuId(stuId);

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(sciList);
    }

    /**
     * 删除科研记录
     */
    @PostMapping("/delete")
    public CommonResult<String> deleteSci(@RequestBody SciVo sciVo) {
        sciMapper.deleteSci(sciVo.getId());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已删除");
    }

    /**
     * 修改科研记录
     */
    @PostMapping("/modify")
    public CommonResult<String> modifySci(@RequestBody Sci sci) {
//        System.out.println(sci.getContent());
//        System.out.println(sci.getType());
//        System.out.println(sci.getId());
        sciMapper.modifySci(sci.getId(),sci.getType(),sci.getContent());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已删除");
    }
}
