package com.example.agile0509.controller;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.mapper.RulesMapper;
import com.example.agile0509.pojo.Rule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


/**
 * @author Junzhe
 * @ClassName RulesController
 * @date 2023/5/29 18:34
 */

@Controller
@RequestMapping("/rules")
@ResponseBody //这样才能返回相应的对象
public class RulesController {
    @Autowired
    private RulesMapper rulesMapper;

    /**
     * 修改规则
     */
    @PostMapping("/change")
    public CommonResult<String> changeRules(@RequestBody Rule rule) {

        rulesMapper.changeRules(rule.getGpa(),rule.getGpaLimit(),rule.getVolun(),rule.getVolunLimit(),rule.getSci(),rule.getSciLimit(),rule.getOrg(),rule.getOrgLimit(),rule.getSocial(),rule.getSocialLimit(),rule.getSum(),rule.getSum());

        // 返回CommonResult
        return CommonResult.success("规则修改成功");
    }

    /**
     * 从数据库中查看规则
     */
    @PostMapping("/get")
    public CommonResult<Rule> viewRules() {
        Rule rule = rulesMapper.getRules();
        // 返回CommonResult
        return CommonResult.success(rule);
    }

}
