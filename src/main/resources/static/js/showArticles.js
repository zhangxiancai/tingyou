
$(".img-center").each(function (i,imgCenter) {//别用this代替imgCenter

    var height = $(imgCenter).height();

    $(imgCenter).children("div.img-three").each(function (j,three) {
        var margin = (height-$(three).height()-4)*0.5;
        $(three).css("margin-top",margin);
        $(three).css("margin-bottom",margin);
    })
});