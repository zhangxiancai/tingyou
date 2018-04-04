package com.ting.you.config;

import com.alibaba.druid.pool.DruidDataSource;

import com.ting.you.global.GlobalConstant;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;


@ComponentScan
@Configuration
public class ApplicationConfig {

    @Bean
    public DataSource getDataSource() {
        DruidDataSource dataSource = new DruidDataSource();
        String ip = System.getenv(GlobalConstant.MYSQL_IP);
        String password = System.getenv(GlobalConstant.MYSQL_PASSWORD);
        if(ip==null){
            ip="127.0.0.1";
        }
        if(password==null){
            password="123456";
        }

        dataSource.setUrl("jdbc:mysql://"+ip+":3306/tingyou?useUnicode=true&characterEncoding=UTF-8&useSSL=false");
        dataSource.setUsername("root");
        dataSource.setPassword(password);

        return dataSource;
    }
}
