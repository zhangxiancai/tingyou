package com.ting.you.controller;

import com.ting.you.dao.ArticleMapper;
import com.ting.you.dao.UaRibbonMapper;
import com.ting.you.pojo.Article;
import com.ting.you.pojo.User;
import com.ting.you.service.ArticleService;
import com.ting.you.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Controller
public class ArticleController {
    @Autowired
    ArticleMapper articleMapper;

    @Autowired
    ArticleService articleService;
    @Autowired
    UserService userService;



    @RequestMapping("/createArticle")
    public String createArticle(Model model, HttpServletRequest request, String title, String content) throws IOException {

        List<MultipartFile> files = ((MultipartHttpServletRequest)request).getFiles("file");
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
            articleService.createArticle(title, content, files, user);

        return "redirect:showArticles";
    }

    @RequestMapping("/showArticles")
    public String showArticle(HttpServletRequest request,Model model) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        List<Article> articles = articleService.showArticles();

        model.addAttribute("articles", articles);
        model.addAttribute("user", user);
        return "article/showArticles";
    }

    @RequestMapping("/addArticle")
    public String addArticle(HttpServletRequest request,Model model) {

        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        model.addAttribute("user", user);
        return "article/addArticle";
    }

    @RequestMapping("/articleContent")
    public String articleContent(HttpServletRequest request,Model model, int id) {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        Article article = articleService.getArticleContent(id);
        articleMapper.addOneToBrowseCount(id);//浏览数加一
        model.addAttribute("article", article);
        model.addAttribute("user", user);
        return "article/articleContent";
    }

    @RequestMapping("/showMyArticles")
    public String showMyArticles(HttpServletRequest request, Model model) throws IOException {

        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        List<Article> articles = articleService.showMyArticles(user);
        model.addAttribute("articles", articles);
        model.addAttribute("user", user);
        return "article/showMyArticles";
    }

    @RequestMapping("/deleteArticle")
    public String deleteArticle(HttpServletRequest request, int id) {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登录
        }
        articleService.deleteArticle(id, user);
        return "redirect:showMyArticles";
    }

    @RequestMapping("/doRibbon")
    @ResponseBody
    public void doRibbon(HttpServletRequest request, String temp,String articleId) {
        User user = (User) request.getSession().getAttribute("user");
        articleService.doRibbon(user,temp,Integer.valueOf(articleId));
       // return count;
    }
}
