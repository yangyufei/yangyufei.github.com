<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8"/>
    <title>密码修改—个人中心</title>
    <link rel="icon" href="${basePath}/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${basePath}/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css"/>
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less"/>
    <link href="${basePath}/js/common/bootstrap/3.3.5/css/bootstrap.min.css?${_v}" rel="stylesheet"/>
    <link href="${basePath}/css/common/base.css?${_v}" rel="stylesheet"/>

    <script type="text/javascript" src="${basePath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/less.js"></script>
    <script src="${basePath}/js/common/layer/layer.js"></script>
    <script src="${basePath}/js/shiro.demo.js"></script>
    <script src="${basePath}/js/common/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<div class="wrap">
    <div class="headTitle clearfix">
    <@_top.top 1/>
    </div>
    <div class="wrap-con">
        <div class="nav">
        <@_left.user 1/>
        </div>
        <div class="wrapCon">
            <h2>密码修改</h2>
            <hr>
            <form id="formId" enctype="multipart/form-data" action="${basePath}/user/updatePswd.shtml" method="post">
                <div class="form-group">
                    <label for="pswd">原密码</label>
                    <input type="password" class="form-control" autocomplete="off" id="pswd" maxlength="20" name="pswd"
                           placeholder="请输入原密码">
                </div>
                <div class="form-group">
                    <label for="newPswd">新密码</label>
                    <input type="password" class="form-control" autocomplete="off" id="newPswd" maxlength="20"
                           name="newPswd" placeholder="请输入新密码">
                </div>
                <div class="form-group">
                    <label for="reNewPswd">新密码（再输入一次）</label>
                    <input type="password" class="form-control" autocomplete="off" id="reNewPswd" maxlength="20"
                           name="reNewPswd" placeholder="请再次输入新密码">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">确定修改</button>
                </div>
            </form>

        </div>
    </div>
</div>
<script src="/js/common/jquery/jquery.form-2.82.js?${_v}"></script>
<script>
    $(function () {
        var load;
        $("#formId").ajaxForm({
            success: function (result) {
                layer.close(load);
                if (result && result.status != 200) {
                    return layer.msg(result.message, function () {
                    }), !1;
                } else {
                    layer.msg('操作成功！');
                    $("form :password").val('');
                }
            },
            beforeSubmit: function () {
                //判断参数
                if ($.trim($("#pswd").val()) == '') {
                    layer.msg('请输入原密码', function () {
                    });
                    $("#pswd").parent().removeClass('has-success').addClass('has-error');
                    return !1;
                } else {
                    $("#pswd").parent().removeClass('has-error').addClass('has-success');
                }
                if ($.trim($("#newPswd").val()) == '') {
                    layer.msg('请输入新密码', function () {
                    });
                    $("#newPswd").parent().removeClass('has-success').addClass('has-error');
                    return !1;
                } else {
                    $("#newPswd").parent().removeClass('has-error').addClass('has-success');
                }
                if ($.trim($("#reNewPswd").val()) == '') {
                    layer.msg('请再次输入新密码', function () {
                    });
                    $("#reNewPswd").parent().removeClass('has-success').addClass('has-error');
                    return !1;
                } else {
                    $("#reNewPswd").parent().removeClass('has-error').addClass('has-success');
                }
                if ($("#reNewPswd").val() != $("#newPswd").val()) {
                    return layer.msg('2次新密码输入不一致。', function () {
                    }), !1;
                }
                load = layer.load('正在提交！！！');
            },
            dataType: "json",
            clearForm: false
        });

    });
</script>

</body>
</html>