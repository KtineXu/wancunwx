// JavaScript Document
$(function () {
    ImgSize();
});
$(window).resize(function () {
    ImgSize();
});
function ImgSize() {
    $("img").each(function () {
        var imgbl = $(this).attr("data");
        if (imgbl != "" || imgbl != null) {
            var imgwh = $(this).parent().width();
            //$(this).height($(this).width() * imgbl);
            $(this).parent().height(imgwh * imgbl);
        }
    });

}

























