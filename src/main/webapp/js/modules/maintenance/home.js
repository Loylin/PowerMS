/**
 * Created by Administrator on 2017/7/18.
 */
window.onload = function () {
    init_navbar();
    init_list();
}

//初始化导航栏
function init_navbar() {
    $("#navbar-list").on("click", "li", function () {
        $("#navbar-list li").removeClass("active");
        $(this).addClass("active");
    });
}

//初始化列表栏
function init_list() {
    $("#nav-list").on("click", "li", function () {
        $("#nav-list li").removeClass("active");
        $(this).addClass("active");
    });
    return false;
}