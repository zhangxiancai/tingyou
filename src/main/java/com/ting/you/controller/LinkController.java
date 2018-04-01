package com.ting.you.controller;

import com.ting.you.dao.LinkMapper;
import com.ting.you.dao.UserMapper;
import com.ting.you.pojo.Link;
import com.ting.you.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class LinkController {

    @Autowired
    LinkMapper linkMapper;

    @Autowired
    UserMapper userMapper;
    @RequestMapping("/showLinks")
    public String showLinks(HttpServletRequest request,Model model) {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        List<Link> links = linkMapper.selectAll();
        for (Link link:links) {
            User user1 =userMapper.selectById(link.getUserId());
            link.setLinkUser(user1);
        }
        model.addAttribute("links",links);
        model.addAttribute("user",user);
        return "link/allLinks";
    }

    @RequestMapping("/addLink")
    public String addLink(HttpServletRequest request,Model model) {

        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        model.addAttribute("user",user);
        return "link/addLink";
    }
    @RequestMapping("/createLink")
    public String createLink(String content,String link,HttpServletRequest request) {
        if(!(content.equals("") || link.equals(""))) {
            User user = (User)request.getSession().getAttribute("user");

            linkMapper.insert(user.getId(), content, link);
        }
        return "redirect:/showLinks";
    }

    @RequestMapping("/showMyLinks")
    public String showMyLinks(HttpServletRequest request,Model model){
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        List<Link> links = linkMapper.selectByUserId(user.getId());
        model.addAttribute("links",links);
        model.addAttribute("user",user);
        return "link/myLinks";
    }
}
