package com.ting.you.service;


import com.ting.you.pojo.UaComment;
import com.ting.you.pojo.User;

import java.util.List;

public interface UaService {
    UaComment createComment(int userId, int articleId, int preCommentId, String commentContent);

    List<UaComment> showComments(int id, String pattern);

    UaComment showComment(int commentId);

    UaComment createUuComment(int commentId, User user, String commentContent);

    List<UaComment> showMyComments(int userId);

    boolean deleteComment(int id,User user);
}
