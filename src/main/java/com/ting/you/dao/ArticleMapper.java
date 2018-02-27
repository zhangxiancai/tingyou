package com.ting.you.dao;


import com.ting.you.pojo.Article;
import org.apache.ibatis.annotations.*;
import java.util.Date;
import java.util.List;

@Mapper
public interface ArticleMapper {

    @Select("SELECT * FROM article WHERE id=#{id}")
    Article selectById(int id);

    @Select("SELECT * FROM article")
    List<Article> selectAll();

    @Update("update article set content=#{content},title=#{title},userId=#{userId} where id =#{id}")
    Boolean update(@Param("title") String title, @Param("content") String content,@Param("userId") int userId, @Param("id") int id);

    @Insert("INSERT INTO article(title,content,userId,createTime,browseCount,ribbonCount) " +
            "VALUES(#{title},#{content},#{userId},#{createTime},#{browseCount},#{ribbonCount})")
    Boolean insert(@Param("title") String title, @Param("content") String content, @Param("userId") int userId,
                   @Param("createTime") Date time,@Param("browseCount")int browse,@Param("ribbonCount")int ribbon);

    @Delete("delete FROM article WHERE id = #{id}")
    Boolean deletebyId(int id);


    @Select("SELECT * FROM article WHERE userId=#{userId}")
    List<Article> selectByUserId(int UserId);

    @Select("SELECT max(id) FROM article")
    int selectMaxId();

    @Update("update article set browseCount=browseCount+1 where id =#{id}")
    Boolean addOneToBrowseCount(@Param("id") int id);

    @Update("update article set ribbonCount=#{ribbonCount} where id =#{id}")
    Boolean updateRibbonCount(@Param("ribbonCount") int ribbonCount ,@Param("id") int id);


}
