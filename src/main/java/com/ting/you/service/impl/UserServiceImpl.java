package com.ting.you.service.impl;

import com.ting.you.dao.ArticleMapper;
import com.ting.you.dao.LinkMapper;
import com.ting.you.dao.UserMapper;
import com.ting.you.pojo.Article;
import com.ting.you.pojo.Link;
import com.ting.you.pojo.User;
import com.ting.you.service.ArticleService;
import com.ting.you.service.UserService;
import com.ting.you.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserMapper userMapper;

    @Autowired
    ArticleService articleService;

    @Autowired
    ArticleMapper articleMapper;

    @Autowired
    LinkMapper linkMapper;
    @Override
    public Result registerUser(String username, String password1, String password2) {

        Result result = new Result();
        result.isFalse();
        if(!password1.equals(password2)){
            result.setData("密码不一致");
            return result;
        }
        if(username.equals("")||password1.equals("")){
            result.setData("听友昵称或密码不可为空");
            return result;
        }
        User user = userMapper.selectByUsername(username);
        if(user != null){
            result.setData("听友昵称已被注册");
            return result;
        }
        result.isTure();
        userMapper.insert(username,password1);
        return result;

    }

    @Override
    public User login(String username, String password) {
      User user= userMapper.selectByUsername(username);
      if (user ==null){
          return null;
      }
      if (password.equals(user.getPassword())){
          return user;
      }else {
          return null;
      }
    }

    @Override
    public User showById(int id) {

      return userMapper.selectById(id);
    }

    @Override
    public List<User> showAllUser() {
        return userMapper.selectAllUser();
    }

    @Transactional
    @Override
    public void removeUser(int id) {

        if(id==0){
            return;
        }
        List<Article> articles = articleMapper.selectByUserId(id);
        List<Link> links = linkMapper.selectByUserId(id);
        for (Article article : articles) {
            articleService.manageDoDeleteArticle(article.getId());
        }
        for (Link link : links) {
            linkMapper.deletebyId(link.getId());
        }
         userMapper.deletebyId(id);
    }
}
