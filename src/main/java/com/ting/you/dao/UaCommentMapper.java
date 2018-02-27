package com.ting.you.dao;


import com.ting.you.pojo.UaComment;
import org.apache.ibatis.annotations.*;

import java.util.Date;
import java.util.List;


@Mapper
public interface UaCommentMapper {

    @Select("SELECT * FROM uaComment WHERE id=#{id}")
    UaComment selectById(@Param("id") int id);

    @Select("SELECT * FROM uaComment ")
    List<UaComment> selectAll();


    @Insert("INSERT INTO uaComment(userId,preCommentId,articleId,commentContent,createTime) " +
            "VALUES(#{userId},#{preCommentId},#{articleId},#{commentContent},#{createTime})")
    boolean insert(@Param("userId") int userId, @Param("preCommentId") int preCommentId,
                   @Param("articleId") int articleId, @Param("commentContent") String commentContent, @Param("createTime")Date createTime);

    @Delete("delete FROM uaComment WHERE id = #{id}")
    boolean deletebyId(@Param("id") int id);

    @Select("SELECT * FROM uaComment WHERE articleId=#{articleId}")
    List<UaComment> selectByArticleId(@Param("articleId") int articleId);

    @Select("SELECT max(id) FROM uaComment")
    int selectMaxId();

    @Select("SELECT * FROM uaComment WHERE articleId=#{articleId} and preCommentId=0")
    List<UaComment> selectUaByArticleId(@Param("articleId") int articleId);

    @Select("SELECT * FROM uaComment WHERE  preCommentId=#{preCommentId}")
    List<UaComment> selectBypreCommentId(@Param("preCommentId") int preCommentId);

    @Select("SELECT * FROM uaComment WHERE userId=#{userId}")
    List<UaComment> selectByUserId(@Param("userId") int userId);
}
