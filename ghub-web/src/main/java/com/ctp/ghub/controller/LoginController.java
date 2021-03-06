package com.ctp.ghub.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.ctp.ghub.constant.Constant;
import com.ctp.ghub.constant.PermissionSignConstant;
import com.ctp.ghub.constant.RoleSignConstant;
import com.ctp.ghub.model.LoginReqData;
import com.ctp.ghub.model.UserDO;
import com.ctp.ghub.service.UserService;
import com.ctp.ghub.serviceimpl.PasswordEncryptService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author chengtianping
 * @description
 * @date 2018/7/20
 */
@Api(value="login controller",description="系统登录相关")
@Controller
@RequestMapping("/api/ghub")
public class LoginController {

    @Autowired
    UserService userService;

    @Autowired
    PasswordEncryptService passwordEncryptService;

    @RequestMapping(value = "/loginPage",method = RequestMethod.GET)
    @ApiOperation(value="登录页面",notes="登录页面跳转",httpMethod = "GET")
    public ModelAndView loginPage(){
        return new ModelAndView("login");
    }

    /**
     * 登录
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ApiOperation(value="登录系统",notes="登录系统操作",httpMethod = "POST")
    public String login(@ApiParam(name="LoginReqData实体",value="json格式",required=true)@Valid LoginReqData loginReqData, BindingResult result, Model model, HttpServletRequest request) throws IOException {
        try {
            Subject subject = SecurityUtils.getSubject();
            // 已登陆则 跳到首页
            if (subject.isAuthenticated()) {
                return "redirect:/index";
            }
            if (result.hasErrors()) {
                model.addAttribute("error", "参数校验错误！");
                return "login";
            }
            // 身份验证
            subject.login(new UsernamePasswordToken(loginReqData.getUsername(), loginReqData.getPassword(),false));
            // 验证成功在Session中保存用户信息
            UserDO userDO = this.userService.selectByAccount(loginReqData.getUsername());
            request.getSession().setAttribute(Constant.SESSION_LOGIN_USER, userDO);
        } catch (AuthenticationException e) {
            // 身份验证失败
            model.addAttribute("error", "用户名或密码错误 ！");
            return "login";
        }
        return "redirect:/index";
    }

    /**
     * 用户登出
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    @ApiOperation(value="登出页面",notes="登出系统操作",httpMethod = "GET")
    public String logout(HttpSession session) {
        session.removeAttribute(Constant.SESSION_LOGIN_USER);
        // 登出操作
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "login";
    }

    /**
     * 基于角色 标识的权限控制案例
     */
    @RequestMapping(value = "/admin")
    @ResponseBody
    @RequiresRoles(value = RoleSignConstant.ADMIN)
    @ApiOperation(value="admin权限",notes="admin权限判断",httpMethod = "GET")
    public String admin() {
        return "拥有admin角色,能访问";
    }

    /**
     * 基于权限标识的权限控制案例
     */
    @RequestMapping(value = "/create")
    @ResponseBody
    @RequiresPermissions(value = PermissionSignConstant.USER_CREATE)
    @ApiOperation(value="user_create权限",notes="user_create权限判断",httpMethod = "GET")
    public String create() {
        return "拥有user:create权限,能访问";
    }
}
