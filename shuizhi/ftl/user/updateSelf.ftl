<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8"/>
    <title>资料修改 —个人中心</title>
    <link rel="icon" href="${basePath}/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${basePath}/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css"/>
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less"/>
    <link href="${basePath}/js/common/bootstrap/3.3.5/css/bootstrap.min.css?${_v}" rel="stylesheet"/>
    <link href="${basePath}/css/common/base.css?${_v}" rel="stylesheet"/>

    <script type="text/javascript" src="${basePath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/less.js"></script>
    <script src="${basePath}/js/common/layer/layer.js"></script>
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
            <h2>资料修改</h2>
            <hr>
            <form id="formId" enctype="multipart/form-data" action="${basePath}/user/updateSelf.shtml" method="post">
                <input type="hidden" value="${token.id}" name="id"/>
                <div class="form-group">
                    <label for="nickname">姓名</label>
                    <input type="text" class="form-control" autocomplete="off" id="nickname" maxlength="8"
                           name="nickname" value="${token.nickname?default('未设置')}" placeholder="请输入昵称">
                </div>
                <div class="form-group">
                    <label for="email">Email（不准修改）</label>
                    <input type="text" class="form-control " disabled autocomplete="off" id="email" maxlength="64"
                           name="email" value="${token.email?default('未设置')}" placeholder="请输入帐号">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">确定修改</button>
                </div>
            </form>
        </div>
    </div>
</div>
<#-- 页脚
<@_footer.footer 0/>
-->
<script src="${basePath}/js/common/jquery/jquery.form-2.82.js?${_v}"></script>
<script>
    $(function () {
        var load;
        $("#formId").ajaxForm({
            success: function (result) {
                layer.close(load);
                if (result && result.status == 300) {
                    layer.msg(result.message, function () {
                    });
                    return !1;
                }
                if (result && result.status == 500) {
                    layer.msg("操作失败！", function () {
                    });
                    return !1;
                }
                layer.msg('操作成功！');
            },
            beforeSubmit: function () {
                //判断参数
                if ($.trim($("#nickname").val()) == '') {
                    layer.msg('昵称不能为空！', function () {
                    });
                    $("#nickname").parent().removeClass('has-success').addClass('has-error');
                    return !1;
                } else {
                    $("#nickname").parent().removeClass('has-error').addClass('has-success');
                }
                load = layer.load();
            },
            dataType: "json",
            clearForm: false
        });

    });
</script>

</body>
</html>