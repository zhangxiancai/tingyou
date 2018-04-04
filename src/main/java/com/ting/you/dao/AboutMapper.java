package com.ting.you.dao;


import com.ting.you.pojo.About;
import org.apache.ibatis.annotations.*;

import java.util.List;


@Mapper
public interface AboutMapper {

    @Select("SELECT * FROM about WHERE id=#{id}")
    About selectById(@Param("id") int id);

    @Select("SELECT * FROM about ")
    List<About> selectAll();

    @Update("update about set content=#{content},title=#{title} where id =#{id}")
    Boolean update(@Param("content") String content, @Param("title") String title, @Param("id") int id);

    @Insert("INSERT INTO about(title,content) VALUES(#{title},#{content})")
    Boolean insert(@Param("title") String title, @Param("content") String content);

    @Delete("delete FROM about WHERE id = #{id}")
    Boolean deletebyId(@Param("id") int id);

}
