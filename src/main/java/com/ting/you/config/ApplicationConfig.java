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
        if(ip==null){
            ip="127.0.0.1";
        }
        dataSource.setUrl("jdbc:mysql://"+ip+":3306/tingyou?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true");
        dataSource.setUsername("root");
        dataSource.setPassword("123456");

        return dataSource;
    }
}
