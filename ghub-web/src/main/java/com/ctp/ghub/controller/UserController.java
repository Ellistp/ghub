package com.ctp.ghub.controller;

import com.ctp.ghub.model.UserDO;
import com.ctp.ghub.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2018/5/12 0012.
 */
@Api(value="user controller",description="用户相关操作")
@Controller
@RequestMapping("/api/ghub/user")
public class UserController {

    private static final Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    UserService userService;

    @RequestMapping(value = "/getUser",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value="用户获取",notes="获取用户信息",httpMethod = "GET")
    public UserDO getUser(@ApiParam(required=true,value="用户ID",name="userId")@RequestParam(value="userId")Long userId) {
        logger.info("根据ID获取用户信息");
        return userService.selectById(userId);
    }

}
