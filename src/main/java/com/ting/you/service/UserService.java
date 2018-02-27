package com.ting.you.service;

import com.ting.you.pojo.User;
import com.ting.you.util.Result;

public interface UserService {

    Result registerUser(String username, String password1, String password2);

    User login(String username, String password);

    User selectById(int id);
}
