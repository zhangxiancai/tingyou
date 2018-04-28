package com.ting.you;

import com.alibaba.fastjson.JSON;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import java.io.IOException;
import java.util.Map;

public class Test {
    public static void main(String[] args) throws IOException {
        String url = "http://ip.taobao.com/service/getIpInfo.php?ip=218.192.3.42";
        OkHttpClient okHttpClient = new OkHttpClient();
        Request request = new Request.Builder()
                .url(url)
                .build();
        Call call = okHttpClient.newCall(request);
        Response response = call.execute();
        String json = response.body().string();
        Map<String,String> map = (Map<String,String>) JSON.parse(json);

    }
}
