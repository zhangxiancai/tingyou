package com.ting.you.dao;


import com.ting.you.pojo.UaRibbon;
import org.apache.ibatis.annotations.*;

import java.util.List;


@Mapper
public interface UaRibbonMapper {

    @Select("SELECT * FROM uaRibbon WHERE id=#{id}")
    UaRibbon selectById(@Param("id") int id);

    @Select("SELECT * FROM uaRibbon ")
    List<UaRibbon> selectAll();


    @Insert("INSERT INTO uaRibbon(userId,articleId) VALUES(#{userId},#{articleId})")
    boolean insert(@Param("userId") int userId, @Param("articleId") int articleId);

    @Delete("delete FROM uaRibbon WHERE id = #{id}")
    boolean deletebyId(@Param("id") int id);

    @Select("SELECT count(id) FROM uaRibbon WHERE articleId=#{articleId}")
    int selectCountByArticleId(@Param("articleId") int articleId);

    @Delete("delete FROM uaRibbon WHERE userId = #{userId} and articleId=#{articleId}")
    boolean deletebyUA(@Param("userId") int userId,@Param("articleId") int articleId);

    @Select("select count(id) FROM uaRibbon WHERE userId = #{userId} and articleId=#{articleId}")
    int selectCountByUA(@Param("userId") int userId,@Param("articleId") int articleId);
}
