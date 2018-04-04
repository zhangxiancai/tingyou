package com.ting.you.controller.manage;


import com.ting.you.dao.AboutMapper;
import com.ting.you.pojo.About;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Controller
public class ManageAboutController {
    @Autowired
    AboutMapper aboutMapper;

    @RequestMapping("/manageGetAbout")
    public String manageAbout(HttpServletRequest request,Model model) {
        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }

        List<About> abouts = aboutMapper.selectAll();
        model.addAttribute("abouts",abouts);
        return "manage/manageAbout";
    }

    @RequestMapping("/maangeDoDeleteAbout")
    public String maangeDeleteAbout(HttpServletRequest request,int id) {
        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }
        aboutMapper.deletebyId(id);
        return "redirect:/manageGetAbout";
    }


    @RequestMapping("/manageAddAbout")
    public String maangeAddAbout(HttpServletRequest request)  {
        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }

        return "manage/addAbout";
    }

    @RequestMapping("/manageDoAddAbout")
    public String maangeDoAddAbout(HttpServletRequest request,Model model,String title,String content) throws IOException {
        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }

        aboutMapper.insert(title,content);
        return "redirect:/manageGetAbout";
    }

    @RequestMapping("/manageUpdateAbout")
    public String manageUpdateAbout(HttpServletRequest request,Model model,int id) throws IOException {
        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }

        About about = aboutMapper.selectById(id);
        model.addAttribute("about",about);

        return "manage/updateAbout";
    }
    @RequestMapping("/manageDoUpdateAbout")
    public String manageDoUpdateAbout(HttpServletRequest request,Model model,int id,String title,String content) throws IOException {
        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }

        aboutMapper.update(content,title,id);
        List<About> abouts = aboutMapper.selectAll();
        model.addAttribute("abouts",abouts);
        return "manage/manageAbout";
    }
}
