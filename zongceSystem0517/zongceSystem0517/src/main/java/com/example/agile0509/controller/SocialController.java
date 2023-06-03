package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.SocialMapper;
import com.example.agile0509.pojo.Social;
import com.example.agile0509.pojo.StudentInfo;
import com.example.agile0509.pojo.User;
import com.example.agile0509.utils.JwtTokenUtil;
import com.example.agile0509.vo.LoginReqVO;
import com.example.agile0509.vo.SocialVo;
import com.example.agile0509.vo.StudentGPAVo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Api(tags = "演示接口")
@RequestMapping("/social")
@ResponseBody //这样才能返回相应的对象
public class SocialController {
    @Autowired
    private SocialMapper socialMapper;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    /**
     * 新增社会实践记录
     */
    @PostMapping("/add")
    public CommonResult<String> addSocial(@RequestHeader("Authorization") String authHeader, @RequestBody Social social) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);

        System.out.println(social);
        if(social.getTime().equals("") || social.getContent().equals("")){
            return CommonResult.error(500121, "不能提交空记录");
        } else {
            socialMapper.insertSocial(stuId, social.getTime(),social.getContent());
        }

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("社会实践经历提交成功");
    }

    /**
     * 查看已提交的社会实践记录
     */
    @PostMapping("/viewSubmitted")
    public CommonResult<List<SocialVo>> viewSocial(@RequestHeader("Authorization") String authHeader) {
        // 解析Authorization请求头中的JWT令牌 Bearer access_token
        String token = authHeader.substring(7);
        String stuId = jwtTokenUtil.getUsernameFromToken(token);

        List<SocialVo> socialList = socialMapper.getSocialByStuId(stuId);

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success(socialList);
    }

    /**
     * 删除社会实践记录
     */
    @PostMapping("/delete")
    public CommonResult<String> deleteSocial(@RequestBody SocialVo socialVo) {
        socialMapper.deleteSocial(socialVo.getId());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已删除");
    }

    /**
     * 修改社会实践记录
     */
    @PostMapping("/modify")
    public CommonResult<String> modifySocial(@RequestBody Social social) {
//        System.out.println(social.getContent());
//        System.out.println(social.getTime());
//        System.out.println(social.getId());
        socialMapper.modifySocial(social.getId(),social.getTime(),social.getContent());

        // 返回带有学号、学年和GPA信息的 CommonResult
        return CommonResult.success("记录已修改");
    }
}
