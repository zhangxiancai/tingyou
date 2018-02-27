package com.ting.you.dao;


import com.ting.you.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserMapper {

    @Select("SELECT * FROM user WHERE id=#{id}")
    User selectById(int id);

    @Select("SELECT * FROM user ")
    List<User> selectAll();

    @Update("update user set username=#{username},password=#{password} where id =#{id}")
    User update(@Param("username") String username, @Param("password") String password, @Param("id") int id);

    @Insert("INSERT INTO user(username,password) VALUES(#{username},#{password})")
    Boolean insert(@Param("username") String username, @Param("password") String password);

    @Delete("delete FROM user WHERE id = #{id}")
    Boolean deletebyId(@Param("id") int id);


    @Select("SELECT username FROM user")
    List<String> selectAllUserName();

    @Select("SELECT * FROM user WHERE username=#{username}")
    User selectByUsername(String username);


}
