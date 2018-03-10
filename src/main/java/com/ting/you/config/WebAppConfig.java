package com.ting.you.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebAppConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String location=System.getenv("IMAGE_LOCATION");
        if(location==null){
            location="D:\\images\\";
        }
        registry.addResourceHandler("/userImages/**").addResourceLocations(location);
        super.addResourceHandlers(registry);
    }
}
