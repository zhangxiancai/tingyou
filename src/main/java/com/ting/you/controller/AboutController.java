package com.ting.you.controller;


import com.ting.you.dao.AboutMapper;
import com.ting.you.pojo.About;
import com.ting.you.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AboutController {
    @Autowired
    AboutMapper aboutMapper;

    @RequestMapping("/about")
    public String About(Model model,HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        List<About> abouts=aboutMapper.selectAll();
        About activeAbout = aboutMapper.selectById(abouts.get(0).getId());
        model.addAttribute("abouts",abouts);
        model.addAttribute("activeAbout",activeAbout);
        model.addAttribute("user",user);
        return "about";
    }

    @RequestMapping("/getOneAbout")
    public String getOneAbout(int id,Model model,HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        List<About> abouts=aboutMapper.selectAll();
        About activeAbout =aboutMapper.selectById(id);

        model.addAttribute("abouts",abouts);
        model.addAttribute("activeAbout",activeAbout);
        model.addAttribute("user",user);
        return "about";
    }
}
