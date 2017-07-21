/**
 * Created by Administrator on 2017/7/18.
 */
window.onload = function () {
    init_nav();
}

function init_nav() {
    $("#nav-list").on("click", "li", function () {
        $("#nav-list li").removeClass("active");
        $(this).addClass("active");
    });
    return false;
}