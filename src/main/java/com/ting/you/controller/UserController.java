package com.ting.you.controller;


import com.ting.you.pojo.User;
import com.ting.you.service.UserService;
import com.ting.you.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login(Model model,HttpServletRequest request, String username, String password){

        User user = userService.login(username,password);
        if (user!=null) {
            request.getSession().setAttribute("user", user);
            model.addAttribute("user", user);
            model.addAttribute("message","ok");
            return "main";
        }else {
            model.addAttribute("message","听友昵称或密码错误");
            return "login";
        }

    }

    @RequestMapping("/getLogin")
    public String getLogin(){

            return "login";
        }


    @RequestMapping("/showUser")
    public String showUser(Model model,HttpServletRequest request){

        User user = (User)request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        model.addAttribute("user", user);
        return "user/showUser";
    }

    @RequestMapping("/registerUser")
    public String registerUser(){
        return "user/registerUser";
    }

    @RequestMapping("/addUser")
    public String addUser(Model model, String username, String password1,String password2){
        Result result = userService.registerUser(username,password1,password2);
        if (!result.isTemp()){
            model.addAttribute("message",result.getData());
            return "user/registerUser";
        }
        return "login";
    }



}
