package com.ting.you.service.impl;

import com.ting.you.dao.ArticleImageMapper;
import com.ting.you.pojo.ArticleImage;
import com.ting.you.service.MediaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MediaServiceImpl implements MediaService{
    @Autowired
    ArticleImageMapper articleImageMapper;

    @Override
    public List<ArticleImage> showAllArticleImages(){
       return articleImageMapper.selectAll();
    }

}
