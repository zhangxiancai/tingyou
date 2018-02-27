//package com.ting.you.controller;
//
//
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.annotation.Before;
//import org.aspectj.lang.annotation.Pointcut;
//import org.springframework.stereotype.Component;
//import org.springframework.web.context.request.RequestContextHolder;
//import org.springframework.web.context.request.ServletRequestAttributes;
//
//import javax.servlet.http.HttpServletRequest;
//
//@org.aspectj.lang.annotation.Aspect
//@Component
//public class Aspect {
//
//    @Pointcut("execution(public * com.ting.you.controller.*.*(..))")
//    public void webLog(){}
//
//    @Before("webLog()")
//    public void deBefore(JoinPoint joinPoint) throws Throwable {
//        // 接收到请求，记录请求内容
//        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
//        HttpServletRequest request = attributes.getRequest();
//
//
//    }
//}
