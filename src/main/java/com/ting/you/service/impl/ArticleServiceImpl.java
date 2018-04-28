package com.ting.you.service.impl;

import com.ting.you.dao.ArticleImageMapper;
import com.ting.you.dao.ArticleMapper;
import com.ting.you.dao.UaRibbonMapper;
import com.ting.you.dao.UserMapper;
import com.ting.you.global.GlobalMy;
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
import java.util.*;

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
            String fileName = System.currentTimeMillis() + "-"+file.getOriginalFilename();

            String fileLocation = GlobalMy.LOCATION+ fileName;
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
    public List<Article> showArticlesByTemp(int start,int size) throws IOException {

        List<Article> articles = articleMapper.selectAllByTemp(start, size);
        for (Article article : articles) {
            changeArticle(article);
        }
        return articles;
    }

    @Override
    public List<Article> showArticlesByDescTempLike(int start,int size,String like,String desc) throws IOException {

        List<Article> articles = articleMapper.selectAllByDescTempLike(start,size,like,desc);
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
        if (user.getId()==0) {
            return;
        }
        if (article.getUserId() != user.getId()) {
            return;
        }
        articleMapper.deletebyId(articleId);
        List<String> imageNames = articleImageMapper.selectImageNameByArticleId(articleId);
        String fileLocation = null;

        for (String item : imageNames) {
            fileLocation = GlobalMy.LOCATION + item;
            FileUtil.deleteFile(fileLocation);//删除文章对应的图片
        }

        articleImageMapper.deletebyArticleId(articleId);//删除文章对应的数据库图片记录

    }

    @Transactional
    @Override
    public void manageDoDeleteArticle(int articleId) {

        articleMapper.deletebyId(articleId);
        List<String> imageNames = articleImageMapper.selectImageNameByArticleId(articleId);
        String fileLocation = null;

        for (String item : imageNames) {
            fileLocation = GlobalMy.LOCATION + item;
            FileUtil.deleteFile(fileLocation);//删除文章对应的图片
        }

        articleImageMapper.deletebyArticleId(articleId);//删除文章对应的数据库图片记录

    }

    @Override
    public Article getArticleContent(int articleId) {
        Article article = articleMapper.selectById(articleId);
        List<String> imageNames = articleImageMapper.selectImageNameByArticleId(articleId);
        Date date = article.getCreateTime();
        SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
        String date1 = sdf.format(date);//设置特定格式时间字符串

        article.setCreateTimeString(date1);
        article.setImageNames(changeImageName(imageNames));
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
//        List<String> imageNames = new ArrayList<>();
//        imageNames.add("test");
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
        article.setImageNames(changeImageName(imageNames));//
        if (content.length() > 75) {
            article.setPartContent(content.substring(0, 75) + "...");
        } else {
            article.setPartContent(content + "...");
        }
        return article;
    }

    private List<Map<String,String>> changeImageName(List<String> imageNames) {
        if(imageNames==null){
            return null;
        }
        List<Map<String,String>> maps=new ArrayList<>();
        for (String imageName : imageNames) {

            Map<String,String> map = new HashMap<>();
            map.put("imageName",imageName);
            map.put("type",getImageType(imageName));
            maps.add(map);
        }
        return maps;
    }

    private String getImageType(String imageName) {
            String[] items = imageName.split("\\.");
            String key = items[items.length-1];
            String type ="image";
          switch(key){
              case "mp4":
                  type="video";
                  break;
              case "ogg":
                  type="video";
                  break;
              case "avi":
                  type="video";
                  break;
          }

          return type;
    }
}
