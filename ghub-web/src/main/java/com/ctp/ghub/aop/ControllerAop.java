package com.ctp.ghub.aop;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @author chengtianping
 * @description 切面aspect由切点和增强组成，包括了横切逻辑的定义和连接点的定义，spring aop就是负责实施切面的框架
 * 它将切面所定义的横切逻辑织入到切面所定义的连接点中
 * @date 2018/5/22
 */
@Component
@Aspect
public class ControllerAop {
    private static final Logger logger = Logger.getLogger(ControllerAop.class);

    /**
     * 定义所有的 controller 切入点
     * 配置切入点,该方法无方法体,主要为方便同类中其他方法使用此处配置的切入点
     */
    //@Pointcut("within(@org.springframework.stereotype.Controller *) && "
    //    + "@annotation(org.springframework.web.bind.annotation.RequestMapping)")
    @Pointcut("execution(public * com.ctp.ghub.controller.*.*(..))")
    public void controller() {
    }

    /**
     * 配置前置通知,使用在方法aspect()上注册的切入点
     * 同时接受JoinPoint切入点对象,可以没有该参数
     * @param joinPoint
     * @throws Throwable
     */
    @Before("controller() && args(..,request)")
    public void controllerAopBefore(JoinPoint joinPoint,HttpServletRequest request) throws Throwable {
        if (null != request) {
            if(logger.isInfoEnabled()){
                logger.info("controller aop before " + joinPoint);
            }
        }
    }

    /**
     * 配置后置通知,使用在方法aspect()上注册的切入点
     * @param joinPoint
     */
    @AfterReturning(pointcut = "controller()")
    public void controllerAopAfterReturn(JoinPoint joinPoint) {
        if(logger.isInfoEnabled()){
            logger.info("controller aop after " + joinPoint);
        }
    }

    /**
     * 配置抛出异常后通知,使用在方法aspect()上注册的切入点
     * @param joinPoint
     * @param exception
     */
    @AfterThrowing(pointcut = "controller()", throwing = "exception")
    public void controllerAopAfterThrowing(JoinPoint joinPoint, Throwable exception) {
        logger.error("controllerAopAfterThrowing " + exception);
    }

    /**
     * 配置环绕通知,使用在方法aspect()上注册的切入点
     * @param joinPoint
     * @return
     * @throws Throwable
     */
    @Around("controller()")
    public Object controllerAopAround(ProceedingJoinPoint joinPoint) throws Throwable {
        //ServletRequestAttributes servletRequestAttributes = (ServletRequestAttributes)RequestContextHolder.currentRequestAttributes();
        //HttpServletRequest request = servletRequestAttributes.getRequest();
        //HttpServletResponse response = servletRequestAttributes.getResponse();
        //
        //HttpSession session = request.getSession();
        ////未登录
        //if(session.getAttribute(Constant.SESSION_LOGIN_USER) == null){
        //    logger.error("未登录系统，请求路径是：" + request.getRequestURI());
        //    //post请求
        //    if(StringUtils.equals(RequestMethod.POST.toString(),request.getMethod())){
        //        // json 请求返回
        //        PrintWriter writer = null;
        //        try {
        //            response.setContentType(Constant.APPLICATION_JSON_CHARSET_UTF_8);
        //            writer = response.getWriter();
        //            Result<String> result = Result.createFailResult(ErrorConstant.NOT_LOGIN_ERROR);
        //            writer.write(JSONObject.toJSONString(result));
        //            writer.flush();
        //        }catch (Exception e){
        //            if (logger.isInfoEnabled()) {
        //                logger.error("LoginAop exception  ",e);
        //            }
        //        }finally{
        //            if(null != writer){
        //                writer.flush();
        //                writer.close();
        //            }
        //        }
        //    }else {
        //        //其他请求 链接到登录页面
        //        request.getRequestDispatcher(Constant.LOGIN_PAGE_PATH).forward(request,response);
        //    }
        //}else {
        //    //登录成功 对请求做一些校验工作 ，例如token的校验
        //    //post请求
        //    if(StringUtils.equals(RequestMethod.POST.toString(),request.getMethod())){
        //
        //        //跳转到首页
        //        request.getRequestDispatcher(Constant.INDEX_PAGE_PATH).forward(request,response);
        //    }else {
        //
        //        //跳转到首页
        //        request.getRequestDispatcher(Constant.INDEX_PAGE_PATH).forward(request,response);
        //    }
        //}
        return joinPoint.proceed();
    }
}
