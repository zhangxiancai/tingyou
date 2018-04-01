package com.ting.you.dao;


import com.ting.you.pojo.Link;
import org.apache.ibatis.annotations.*;

import java.util.List;


@Mapper
public interface LinkMapper {

    @Select("SELECT * FROM link WHERE id=#{id}")
    Link selectById(@Param("id") int id);

    @Select("SELECT * FROM link ")
    List<Link> selectAll();

    @Update("update link set content=#{content},link=#{link} where id =#{id}")
    Boolean update(@Param("content") String content, @Param("link") String link, @Param("id") int id);

    @Insert("INSERT INTO link(userId,content,link) VALUES(#{userId},#{content},#{link})")
    Boolean insert(@Param("userId") int userId, @Param("content") String content, @Param("link") String link);

    @Delete("delete FROM link WHERE id = #{id}")
    Boolean deletebyId(@Param("id") int id);

    @Select("SELECT * FROM link WHERE userId=#{userId}")
    List<Link> selectByUserId(@Param("userId") int userId);
}
