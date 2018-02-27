package com.ting.you.pojo;

public class Link {
    int id;
    int userId;
    String content;
    String link;
    User linkUser;

    public User getLinkUser() {
        return linkUser;
    }

    public void setLinkUser(User linkUser) {
        this.linkUser = linkUser;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

}
