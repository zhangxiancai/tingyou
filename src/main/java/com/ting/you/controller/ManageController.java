package com.ting.you.controller;

import com.ting.you.global.GlobalMy;
import com.ting.you.pojo.Article;
import com.ting.you.pojo.ArticleImage;
import com.ting.you.pojo.User;
import com.ting.you.service.ArticleService;
import com.ting.you.service.MediaService;
import com.ting.you.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Controller
public class ManageController {
    @Autowired
    ArticleService articleService;

    @Autowired
    MediaService mediaService;

    @Autowired
    UserService userService;

    @RequestMapping("/manage")
    public String getLogin(){
        return "manage/login";
    }
    @RequestMapping("/manageGoMain")
    public String goMain(){
        return "manage/main";
    }

    @RequestMapping("/manageDoLogin")
    public String doLogin(String username, String password, HttpServletRequest request, Model model){

        if(GlobalMy.MANAGE_USERNAME.equals(username) && GlobalMy.MANAGE_KEY.equals(password)){
            request.getSession().setAttribute("permission","ok");
            return "redirect:/manageGoMain";
        }
        model.addAttribute("message","用户名或密码错误");
        return "manage/login";
    }

    @RequestMapping("/manageDeleteArticle")
    public String manageDeleteArticle(HttpServletRequest request,Model model) throws IOException {

        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }
        List<Article> articles = articleService.showArticles();
        model.addAttribute("articles",articles);

        return "manage/deleteArticle";
    }

    @RequestMapping("/manageDoDeleteArticle")
    public String manageDoDeleteArticle(HttpServletRequest request,Model model,int id) throws IOException {

        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }
        articleService.manageDoDeleteArticle(id);
        List<Article> articles = articleService.showArticles();
        model.addAttribute("articles",articles);

        return "manage/deleteArticle";
    }
    @RequestMapping("/manageBackup")
    public String manageBackup(HttpServletRequest request,Model model) throws IOException {
        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }
        List<ArticleImage> articleImages = mediaService.showAllArticleImages();
        model.addAttribute("articleImages",articleImages);

        return "manage/backup";
    }

    @RequestMapping("/manageDeleteUser")
    public String manageDeleteUser(HttpServletRequest request,Model model) throws IOException {
        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }
        List<User> users = userService.showAllUser();
        model.addAttribute("users",users);

        return "manage/deleteUser";
    }
    @RequestMapping("/manageDoDeleteUser")
    public String manageDoDeleteUser(HttpServletRequest request,Model model,int id) throws IOException {
        String key = (String)request.getSession().getAttribute("permission");
        if (key == null) {
            return "redirect:/manage";//未登录则返回登录页登录
        }
        userService.removeUser(id);
        List<User> users = userService.showAllUser();
        model.addAttribute("users",users);

        return "manage/deleteUser";
    }

}
