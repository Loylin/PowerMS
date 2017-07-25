define("login", function (require, exports, module) {

    var $ = require('jquery');
    var layer = require('layer');
    var bootstrap = require('bootstrap');

    var login = {
        $error_tips: $("#error-tips"),
        $btn_login: $("#btn-login"),
        $login_form: $("#login-form"),
        $account: $("#account"),
        $psw: $("#psw"),
        bindEvent: function () {
            var me = this;
            me.init();
        },
        init: function () {
            var me = this;
            me.$error_tips.hide();
            me.$btn_login.on("click", function () {
                if (me.check() == true) {
                    me.queryLogin();
                }
                return false;
            });
        },
        check: function () {
            var me = this;
            if (me.$account.val() == '' || me.$psw.val() == '') {
                me.$error_tips.text("账号或密码不能为空！");
                me.$error_tips.show();
                layer.msg("请输入账号或密码！", {time: 1000, icon: 5});
                return false;
            } else {
                return true;
            }
        },
        queryLogin: function () {
            //按钮事件
            var me = this;
            $.ajax({
                type: "post",
                url: "/maintenance/login",
                data: me.$login_form.serialize(),
                dataType: "text",
                async: false,
                success: function (data) {
                    if (data == "YES") {
                        layer.msg("登录成功！", {time: 1000, icon: 6});
                        window.setTimeout(function () {
                            window.location.href = "/maintenance/home";
                        }, 1000);
                    } else {
                        me.$error_tips.text("账号或密码错误！");
                        me.$error_tips.show();
                        me.$account.val("");
                        me.$psw.val("");
                        layer.msg("测试账号：2014001，密码：123456", {time: 1000, icon: 5});
                    }
                },
                error: function (data) {
                    layer.msg("发生错误了！");
                }
            });
        }
    };

    login.bindEvent();
});