package com.ting.you.config;

import com.ting.you.global.GlobalConstant;
import com.ting.you.global.GlobalMy;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebAppConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        GlobalMy.LOCATION=System.getenv(GlobalConstant.IMAGES_LOCATION);
        if( GlobalMy.LOCATION==null){
            GlobalMy.LOCATION="D:\\images\\";
        }
        registry.addResourceHandler("/userImages/**").addResourceLocations("file:"+GlobalMy.LOCATION);
        super.addResourceHandlers(registry);
    }
}
