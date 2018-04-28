package com.ting.you.service;

import com.ting.you.pojo.Ip;
import com.ting.you.pojo.User;
import com.ting.you.util.Result;

import java.util.Date;
import java.util.List;

public interface UserService {

    Result registerUser(String username, String password1, String password2);

    User login(String username, String password);

    User showById(int id);

    List<User> showAllUser();

    void removeUser(int id);

    void createIpRecord(String ip, Date time);

    List<Ip> showIpRecord();
}
