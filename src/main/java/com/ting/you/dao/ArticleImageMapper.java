package com.ting.you.dao;


import com.ting.you.pojo.ArticleImage;
import com.ting.you.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ArticleImageMapper {

    @Select("SELECT * FROM articleImage WHERE id=#{id}")
    ArticleImage selectById(int id);

    @Select("SELECT * FROM articleImage ")
    List<ArticleImage> selectAll();

    @Update("update articleImage set imageName=#{imageName},articleId=#{articleId} where id =#{id}")
    ArticleImage update(@Param("imageName") String imageName, @Param("articleId") int articleId, @Param("id") int id);

    @Insert("INSERT INTO articleImage(imageName,articleId) VALUES(#{imageName},#{articleId})")
    Boolean insert(@Param("imageName") String imageName, @Param("articleId") int articleId);

    @Delete("delete FROM articleImage WHERE id = #{id}")
    Boolean deletebyId(@Param("id") int id);

    @Select("SELECT imageName FROM articleImage where articleId=#{articleId}")
    List<String> selectImageNameByArticleId(int articleId);

    @Delete("delete FROM articleImage WHERE articleId = #{articleId}")
    Boolean deletebyArticleId(@Param("articleId") int articleId);
}
