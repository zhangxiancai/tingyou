package com.ting.you.service.impl;

import com.ting.you.dao.ArticleMapper;
import com.ting.you.dao.UaCommentMapper;
import com.ting.you.dao.UserMapper;
import com.ting.you.pojo.Article;
import com.ting.you.pojo.UaComment;
import com.ting.you.pojo.User;
import com.ting.you.service.UaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class UaServiceImpl implements UaService {

    @Autowired
    UaCommentMapper uaCommentMapper;

    @Autowired
    UserMapper userMapper;

    @Autowired
    ArticleMapper articleMapper;


    @Override
    public UaComment createComment(int userId, int articleId, int preCommentId, String commentContent){
        Date date = new Date();
        uaCommentMapper.insert(userId,preCommentId,articleId,commentContent,date);
        UaComment uaComment = uaCommentMapper.selectById(uaCommentMapper.selectMaxId());

        return changeUaComment(uaComment);

    }

    @Override
    public List<UaComment> showComments(int id, String pattern){
        List<UaComment> comments = new ArrayList<>();
        switch (pattern){
            case "ua":
                comments = uaCommentMapper.selectUaByArticleId(id);
                for (UaComment uaComment:comments) {
                    changeUaComment(uaComment);
                }
               break;
            case "uu":
                comments = uaCommentMapper.selectBypreCommentId(id);
                for (UaComment uaComment:comments) {
                    changeUaComment(uaComment);
                }
                break;
        }
        return comments;

    }


    @Override
    public UaComment showComment(int commentId){

        UaComment uaComment = uaCommentMapper.selectById(commentId);
        changeUaComment(uaComment);
        return uaComment;
    }

    @Override
    public UaComment createUuComment(int commentId, User user, String commentContent){

        UaComment preUaComment = uaCommentMapper.selectById(commentId);
        Date date = new Date();
        uaCommentMapper.insert(user.getId(),preUaComment.getId(),preUaComment.getArticleId(),commentContent,date);
        UaComment uaComment = uaCommentMapper.selectById(uaCommentMapper.selectMaxId());//不适合高并发

        return changeUaComment(uaComment);
    }

    @Override
    public List<UaComment> showMyComments(int userId){

        List<UaComment> uaComments = uaCommentMapper.selectByUserId(userId);
        for (UaComment uaComment:uaComments) {
            changeUaComment(uaComment);
            UaComment preUaComment = uaCommentMapper.selectById(uaComment.getPreCommentId());
            changeUaComment(preUaComment);
            if(preUaComment == null && uaComment.getPreCommentId()==0){
               Article article = articleMapper.selectById(uaComment.getArticleId());
               uaComment.setArticle(article);
            }
            uaComment.setPreUaComment(preUaComment);

        }
        return uaComments;

    }

    @Override
    public boolean deleteComment(int id, User user){
       UaComment uaComment = uaCommentMapper.selectById(id);
       if(uaComment.getUserId() == user.getId()){
           uaCommentMapper.deletebyId(id);
           return true;
       }
       return false;
    }


    private  UaComment changeUaComment(UaComment uaComment){
        if(uaComment ==null){
            return null;
        }
        Date date =uaComment.getCreateTime();
        SimpleDateFormat sdf = new SimpleDateFormat("MM-dd ahh:mm");
        String date1 =sdf.format(date);
        User user=userMapper.selectById(uaComment.getUserId());

        if( user==null ){
            user= new User();
            user.setUsername("账号已注销");//
        }

        List<UaComment> uaComment1s = uaCommentMapper.selectBypreCommentId(uaComment.getId());
        int count = getChildCountByComment(uaComment,uaComment1s);
        uaComment.setCreateTimeString(date1);
        uaComment.setCommentUser(user);
        uaComment.setChildCount(count);
        return uaComment;
    }

//    //计算出留言的树形map
//    private  Map<Integer ,Object> getTreeMapByUaComment(UaComment uaComment,List<UaComment> uaComment1s) {
//        Map<Integer, Object> map = new HashMap<>();
//        for (UaComment uaComment1 : uaComment1s) {
//            List<UaComment> uaComment2s = uaCommentMapper.selectBypreCommentId(uaComment1.getId());
//            if (uaComment2s.size() == 0) {
//                map.put(uaComment1.getId(), uaComment1);
//            } else {
//                map.put(uaComment1.getId(), getTreeMapByUaComment(uaComment1, uaComment2s));
//            }
//        }
//        return map;
//    }


    private  int getChildCountByComment(UaComment uaComment,List<UaComment> uaComment1s){
        int count =0;
        for (UaComment uaComment1 : uaComment1s) {
            List<UaComment> uaComment2s = uaCommentMapper.selectBypreCommentId(uaComment1.getId());
            if (uaComment2s.size() == 0) {
               count=count+1;
            } else {
               count = count+1+getChildCountByComment(uaComment1,uaComment2s);
            }
        }
        return count;
    }


}
