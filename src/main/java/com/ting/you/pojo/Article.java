package com.ting.you.pojo;



import java.util.Date;
import java.util.List;

public class Article {
    int id;
    String title;
    String content;
    int userId;
    Date createTime;
    int browseCount;
    int ribbonCount;
    List<String> imageNames;
    User articleUser;
    String createTimeString;
    String partContent;

    public String getPartContent() {
        return partContent;
    }

    public void setPartContent(String partContent) {
        this.partContent = partContent;
    }

    public String getCreateTimeString() {
        return createTimeString;
    }

    public void setCreateTimeString(String createTimeString) {
        this.createTimeString = createTimeString;
    }

    public User getArticleUser() {
        return articleUser;
    }

    public void setArticleUser(User articleUser) {
        this.articleUser = articleUser;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public int getBrowseCount() {
        return browseCount;
    }

    public void setBrowseCount(int browseCount) {
        this.browseCount = browseCount;
    }

    public int getRibbonCount() {
        return ribbonCount;
    }

    public void setRibbonCount(int ribbonCount) {
        this.ribbonCount = ribbonCount;
    }



    public List<String> getImageNames() {
        return imageNames;
    }

    public void setImageNames(List<String> imageNames) {
        this.imageNames = imageNames;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
