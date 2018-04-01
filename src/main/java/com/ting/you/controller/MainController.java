package com.ting.you.controller;

import com.ting.you.pojo.User;
import com.ting.you.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {
    @Autowired
    UserService userService;

    @RequestMapping("/")
    public String getMain(HttpServletRequest request, Model model){
        User user = (User) request.getSession().getAttribute("user");
        if (user == null){
            user= userService.showById(0);//默认账户
            request.getSession().setAttribute("user",user);
        }
        model.addAttribute("user",user);

        return "main";
    }


}
