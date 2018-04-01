package com.ting.you.service;

import com.ting.you.pojo.Article;
import com.ting.you.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface ArticleService {

    void createArticle(@Param("title") String title, @Param("content") String content, @Param("files") List<MultipartFile> files, @Param("user") User user) throws IOException;

    List<Article> showArticles() throws IOException;

    List<Article> showMyArticles(User user) throws IOException;

    void deleteArticle(int articleId, User user);


    @Transactional
    void manageDoDeleteArticle(int articleId);

    Article getArticleContent(int articleId);

    @Transactional
    int doRibbon(User user, String temp, int articleId);
}
