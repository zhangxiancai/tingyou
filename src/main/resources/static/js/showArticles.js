var size = 5;//一次查询数量
var start = size;
var like = $("#like").text();

//获取更多文章
$("#getMore").click(function () {

    $("#getMore").val("加载中");
    $.ajax({
        url: "/getMoreArticles",
        data: {start: start, size: size,like:like},
        type: "post",
        success: function (articles) {
            $(articles).each(function (index, article) {
                    var article1 = "<div class='template'>\n" +
                        "<a target='_blank' href='/articleContent?id=" + article.id + "'>\n" +
                        "<h4>" + article.title + "</h4>\n" +
                        "</a>\n" +
                        "<p>" + article.partContent + "</p>";

                    var article2 = "";
                    var imageNames = article.imageNames;
                    if (imageNames.length != 0) {
                        article2 = "<div class='img-center'>";
                        for (var i = 0; i < imageNames.length; i++) {
                            article2 = article2 +
                                "<div class='img-three'>\n" +
                                "<img src='/userImages/" + imageNames[i] + "' alt='找不到图片' class='img-responsive'/>\n" +
                                "</div>\n"

                            ;
                        }
                        article2 = article2 + "<div class='clear'></div>\n" + "</div>";
                    }


                    var article3 = "<div class='foot'>\n" +
                        "<span class='font'>" + article.articleUser.username + "</span>\n" +
                        "<span class='font'>| 蓝丝带:<span>" + article.ribbonCount + "</span></span>\n" +
                        "<span class='f-right font'>| 浏览数:<span>" + article.browseCount + "</span></span>\n" +
                        "<span class='font f-right'>" + article.createTimeString + "</span>\n" +
                        "<div class='clear'></div>\n" +
                        "</div>\n" +
                        " </div>";

                    var articleHtml = $(article1 + article2 + article3);
                    $("#parent").append(articleHtml);
                }
            );
            start = start + size;
            if(articles.length!=0){
                $("#getMore").val("更多");
            }else{
                $("#getMore").val("没有了");
            }



        }
    })
});


//-------------------------------------
$(".img-center").each(function (i, imgCenter) {//别用this代替imgCenter

    var height = $(imgCenter).height();

    $(imgCenter).children("div.img-three").each(function (j, three) {
        var margin = (height - $(three).height() - 4) * 0.5;
        $(three).css("margin-top", margin);
        $(three).css("margin-bottom", margin);
    })
});

