package com.ting.you.util;

import com.alibaba.fastjson.JSON;
import com.ting.you.pojo.User;
import com.ting.you.service.UserService;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

public class Verify {

  public static User verify(HttpServletRequest request, UserService userService){

      User user = (User) request.getSession().getAttribute("user");
      if (user == null){
          user= userService.showById(0);//默认账户
          request.getSession().setAttribute("user",user);
          String ip = request.getRemoteAddr();
          Date date = new Date();
          userService.createIpRecord(ip,date);

      }
      return user;
  }

  public static void getCity() throws IOException {

        String url = "https://www.baidu.com/";
        OkHttpClient okHttpClient = new OkHttpClient();
        Request request = new Request.Builder()
                .url(url)
                .build();
        Call call = okHttpClient.newCall(request);
            Response response = call.execute();
            String json = response.body().string();
            Map<String,String> map = (Map<String,String>)JSON.parse(json);


    }
}
