package com.ting.you.controller;

import com.ting.you.dao.UaRibbonMapper;
import com.ting.you.pojo.UaComment;
import com.ting.you.pojo.User;
import com.ting.you.service.UaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class UaController {

    @Autowired
    UaService uaService;
    @Autowired
    UaRibbonMapper uaRibbonMapper;

    @RequestMapping("/createComment")
    @ResponseBody
    public UaComment createComment(int userId,int articleId,int preCommentId,String commentContent){
        UaComment uaComment = uaService.createComment(userId,articleId,preCommentId,commentContent);

        return uaComment;
    }

    @RequestMapping("/showComments")
    @ResponseBody
    public List<UaComment> showComments(int articleId){
        List<UaComment> uaComments = uaService.showComments(articleId,"ua");
        return uaComments;
    }

    @RequestMapping("/showUuComments")
    @ResponseBody
    public List<UaComment> showUuComments(int commentId){
        List<UaComment> uuComments = uaService.showComments(commentId,"uu");
        return uuComments;
    }

    @RequestMapping("/getRibbonKey")
    @ResponseBody
    public String getRibbonKey(String userId,String articleId){
        int key = uaRibbonMapper.selectCountByUA(Integer.valueOf(userId),Integer.valueOf(articleId));
        String temp="is";
        if(key == 0){
            temp="no";
        }
        return temp;
    }


    @RequestMapping("/writeUuComment")
    public String writeUuComment(int commentId, HttpServletRequest request, Model model){
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登陆
        }

        model.addAttribute("comment",uaService.showComment(commentId));
        model.addAttribute("user",user);
        return "article/addUuComment";
    }

    @RequestMapping("/createUuComment")
    public String createUuComment(int commentId,String commentContent, HttpServletRequest request, Model model){
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登陆
        }
        UaComment uaComment = uaService.createUuComment(commentId,user,commentContent);
        String url = "redirect:/articleContent?id="+uaComment.getArticleId();

        return url;
    }
    @RequestMapping("/showMyComments")
    public String showMyComments( HttpServletRequest request, Model model){
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登陆
        }
       List<UaComment> uaComments = uaService.showMyComments(user.getId());
        model.addAttribute("comments",uaComments);
        model.addAttribute("user",user);

        return "user/showMyComments";
    }

    @RequestMapping("/deleteComment")
    public String deleteComment( HttpServletRequest request, Model model,int id){
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/";//未登录则返回首页默认登陆
        }
        uaService.deleteComment(id,user);


        return "redirect:showMyComments";
    }
}
