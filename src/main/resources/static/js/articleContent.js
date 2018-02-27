//获取ua留言
function getComments() {
    $.ajax({
        url:"/showComments",
        data:{articleId:articleId},
        type:"post",
        success:function (comments) {
            $(comments).each(function (index,comment) {

                var commentHtml = $("<div class=\"comment_whole\" id='comment_"+comment.id+"'>\n" +
                    "<div class=\"comment_head\">"+comment.commentUser.username+"</div>\n" +
                    "<p class=\"comment_body\">"+comment.commentContent+"</p>\n" +
                    "<div class=\"comment_foot\"> " +
                    "<span class='f-right'>"+comment.createTimeString+"</span>" +
                    "<a href='/writeUuComment?commentId="+comment.id+"' class='f-right'>留言</a>" +

                    "<span class='f-right getMore' value='" + comment.id + "' value1='" + comment.commentUser.username + "'  value2='" + comment.childCount + "' id='spanCom_"+ comment.id+"'>更多" + comment.childCount + "条</span>" +
                    "<div class='clear'></div>" +
                    "</div>\n"
                       +"</div>\n"
                 );
                $("#comments").append(commentHtml);
            });


        }
    })
}

//保存留言按钮
$("#saveComment").click(function () {
    var content = $("#content").val();
    $.ajax({
        url:"/createComment",
        data:{commentContent:content,userId:userId,articleId:articleId,preCommentId:0},
        type:"post",
        success:function (comment) {
            //   getComments();
            var commentHtml = $("<div class=\"comment_whole\" id='comment_"+comment.id+"'>\n" +
                "<div class=\"comment_head\">"+comment.commentUser.username+"</div>\n" +
                "<p class=\"comment_body\">"+comment.commentContent+"</p>\n" +
                "<div class=\"comment_foot\"> " +
                "<span class='f-right'>"+comment.createTimeString+"</span>" +
                "<a href='/writeUuComment?commentId="+comment.id+"' class='f-right'>留言</a>" +

                "<span class='f-right getMore' value='" + comment.id + "' value1='" + comment.commentUser.username + "' value2='" + comment.childCount + "' id='spanCom_"+ comment.id+"'>更多" + comment.childCount + "条</span>" +
                "<div class='clear'></div>" +
                "</div>\n"
                +"</div>\n"
            );
            $("#comments").append(commentHtml);
            alert("留言成功");
            $("#content").val("");

        }
    })
});

//------------------获取uuComment
$(document).on("click", ".getMore", function() {
    var commentId = $(this).attr("value");
    var preCommentUsername = $(this).attr("value1");
    var childCount = $(this).attr("value2");
    var text =$(this).text();
    // if($(this) != "收起") {
        $.ajax({
            url: "/showUuComments",
            data: {commentId: commentId},
            type: "post",
            success: function (comments) {
                $(comments).each(function (index, comment) {

                    var commentHtml = $("<div class=\"comment_whole1\" id='comment_" + comment.id + "'>\n" +
                        "<div class=\"comment_head\">" + comment.commentUser.username + " 回复 " + preCommentUsername + "</div>\n" +
                        "<p class=\"comment_body\">" + comment.commentContent + "</p>\n" +
                        "<div class=\"comment_foot\"> " +
                        "<span class='f-right'>" + comment.createTimeString + "</span>" +
                        "<a href='/writeUuComment?commentId=" + comment.id + "' class='f-right'>留言</a>" +

                        "<span class='f-right getMore' value='" + comment.id + "' value1='" + comment.commentUser.username + "' value2='" + comment.childCount + "' id='spanCom_"+ comment.id+"'>更多" + comment.childCount + "条</span>" +
                        "<div class='clear'></div>" +
                        "</div>\n"
                        + "</div>\n"
                    );
                    if (text != "收起"){
                        $("#comment_" + commentId).append(commentHtml);
                       // $("#spanCom_"+comment.id).test("收起");
                    }else {
                        $("#comment_"+comment.id).remove();
                       // $("#spanCom_"+comment.id).test("更多"+childCount+"条");
                    }
                }
                );

                if (text != "收起"){
                     $("#spanCom_"+commentId).text("收起");
                   // spanText = text;
                }else {
                     $("#spanCom_"+commentId).text("更多"+childCount+"条");
                }

            }
        });
    //     $(this).text("收起");
    // } else {
    //     $("#com_" + commentId).remove();
    //     $(this).text("更多"+childCount+"条");
    // }

});

