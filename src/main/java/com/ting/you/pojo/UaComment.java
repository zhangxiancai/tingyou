package com.ting.you.pojo;

import java.util.Date;
import java.util.Map;

public class UaComment {
    //将Uacomment视为Comment，修改太麻烦
    int id;
    int userId;
    int preCommentId;
    int articleId;
    String commentContent;
    Date createTime;
    String createTimeString;
    User commentUser;
    int childCount;
    Map<Integer,Object> commentMap;
    UaComment preUaComment;
    Article article;

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }

    public UaComment getPreUaComment() {
        return preUaComment;
    }

    public void setPreUaComment(UaComment preUaComment) {
        this.preUaComment = preUaComment;
    }

    public Map<Integer, Object> getCommentMap() {
        return commentMap;
    }

    public void setCommentMap(Map<Integer, Object> commentMap) {
        this.commentMap = commentMap;
    }

    public int getChildCount() {
        return childCount;
    }

    public void setChildCount(int childCount) {
        this.childCount = childCount;
    }

    public String getCreateTimeString() {
        return createTimeString;
    }

    public void setCreateTimeString(String createTimeString) {
        this.createTimeString = createTimeString;
    }

    public User getCommentUser() {
        return commentUser;
    }

    public void setCommentUser(User commentUser) {
        this.commentUser = commentUser;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPreCommentId() {
        return preCommentId;
    }

    public void setPreCommentId(int preCommentId) {
        this.preCommentId = preCommentId;
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
