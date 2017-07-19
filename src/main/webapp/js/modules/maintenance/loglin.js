/**
 * Created by Administrator on 2017/7/18.
 */
window.onload = function () {
    init();
    btnInit();
}

function init() {
    $("#errortips").hide();
}

function btnInit() {
    //按钮事件
    $("#btn-login").click(function () {
        $.ajax({
            type: "post",
            url: "/maintenance/login",
            data: $("#login-form").serialize(),
            dataType: "text",
            async: false,
            success: function (data) {
                if (data == "YES") {
                    layer.msg("登录成功！", {time: 1000, icon: 6});
                    setTimeout(function () {
                        window.location.href = "/maintenance/home";
                    }, 1000);
                } else {
                    $("#errortips").show();
                    $("#account").val("");
                    $("#psw").val("");
                    layer.msg("测试账号：2014001，密码：123456", {time:3000, icon: 5});
                }
            },
            error: function (data) {
                layer.msg("发生错误了！");
            }
        });
        return false;
    });
}