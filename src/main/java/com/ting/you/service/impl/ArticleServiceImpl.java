package com.ting.you.service.impl;

import com.ting.you.dao.ArticleImageMapper;
import com.ting.you.dao.ArticleMapper;
import com.ting.you.dao.UaRibbonMapper;
import com.ting.you.dao.UserMapper;
import com.ting.you.pojo.Article;
import com.ting.you.pojo.User;
import com.ting.you.service.ArticleService;
import com.ting.you.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    ArticleMapper articleMapper;

    @Autowired
    ArticleImageMapper articleImageMapper;

    @Autowired
    UaRibbonMapper uaRibbonMapper;

    @Autowired
    UserMapper userMapper;

    @Transactional
    @Override
    public void createArticle(String title, String content, List<MultipartFile> files, User user) throws IOException {
        if (!(content.equals("") || title.equals(""))) {
            Date date = new Date();
            articleMapper.insert(title, content, user.getId(), date, 0, 0);
        }
        int articleId = articleMapper.selectMaxId();//不适合高并发

        for (MultipartFile file : files) {
            if ("".equals(file.getOriginalFilename())) {
                continue;
            }
            String fileName = System.currentTimeMillis() + file.getOriginalFilename();
            String location=System.getenv("IMAGE_LOCATION");
            if(location==null){
                location="D:\\images\\";
            }
            String fileLocation = location+ fileName;
            FileUtil.writeToLocal(file, fileLocation);
            articleImageMapper.insert(fileName, articleId);

        }

    }

    @Override
    public List<Article> showArticles() throws IOException {

        List<Article> articles = articleMapper.selectAll();
        for (Article article : articles) {
            changeArticle(article);
        }
        return articles;
    }


    @Override
    public List<Article> showMyArticles(User user) throws IOException {

        List<Article> articles = articleMapper.selectByUserId(user.getId());

        for (Article article : articles) {
            changeArticle(article);
        }
        return articles;
    }

    @Transactional
    @Override
    public void deleteArticle(int articleId, User user) {

        Article article = articleMapper.selectById(articleId);
        if (article.getUserId() != user.getId()) {
            return;
        }
        articleMapper.deletebyId(articleId);
        List<String> imageNames = articleImageMapper.selectImageNameByArticleId(articleId);
        String fileLocation = null;
        String location=System.getenv("IMAGE_LOCATION");
        if(location==null){
            location="D:\\images\\";
        }
        for (String item : imageNames) {
            fileLocation = location + item;
            FileUtil.deleteFile(fileLocation);//删除文章对应的图片
        }

        articleImageMapper.deletebyArticleId(articleId);//删除文章对应的数据库图片记录

    }

    @Override
    public Article getArticleContent(int articleId) {
        Article article = articleMapper.selectById(articleId);
        List<String> imageNames = articleImageMapper.selectImageNameByArticleId(articleId);
        article.setImageNames(imageNames);
        article.setArticleUser(userMapper.selectById(article.getUserId()));
        return article;
    }

    @Transactional
    @Override
    public int doRibbon(User user, String temp, int articleId) {

        int count;
        Article article = articleMapper.selectById(articleId);
        if (temp.equals("is")) {
            uaRibbonMapper.insert(user.getId(), articleId);
            count = article.getRibbonCount() + 1;
            articleMapper.updateRibbonCount(count, articleId);
        } else {
            uaRibbonMapper.deletebyUA(user.getId(), articleId);
            count = article.getRibbonCount() - 1;
            articleMapper.updateRibbonCount(count, articleId);
        }
        return count;
    }

    private Article changeArticle(Article article) {

        List<String> imageNames = articleImageMapper.selectImageNameByArticleId(article.getId());
        if (imageNames.size() > 3) {
            List<String> imageNames1 = new ArrayList<>();
            for (int i = 0; i < 3; i++) {//列表展示时最多显示三个
                imageNames1.add(imageNames.get(i));
            }
            imageNames = imageNames1;
        }
        Date date = article.getCreateTime();
        SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
        String date1 = sdf.format(date);//设置特定格式时间字符串

        String content = article.getContent();

        article.setArticleUser(userMapper.selectById(article.getUserId()));//设置文章用户
        article.setCreateTimeString(date1);
        article.setImageNames(imageNames);
        if (content.length() > 75) {
            article.setPartContent(content.substring(0, 75) + "...");
        } else {
            article.setPartContent(content + "...");
        }
        return article;
    }


}
