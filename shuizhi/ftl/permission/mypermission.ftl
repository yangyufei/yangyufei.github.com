<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8"/>
    <title>我的权限 —个人中心</title>
    <link rel="stylesheet" type="text/css" href="../../css/reset.css"/>
    <link rel="stylesheet" type="text/less" href="../../css/common.less"/>
    <link href="${basePath}/js/common/bootstrap/3.3.5/css/bootstrap.min.css?${_v}" rel="stylesheet"/>
    <script  src="${basePath}/js/common/jquery/jquery1.8.3.min.js"></script>
    <script src="${basePath}/js/less.js"></script>
    <script src="${basePath}/js/common/layer/layer.js"></script>
    <script src="${basePath}/js/shiro.demo.js"></script>
    <script src="${basePath}/js/common/bootstrap/bootstrap-treeview.js"></script>
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
            <div id="getPermissionTree">loding... ...</div>
        </div>
    </div>
</div>

<script>
    $(function () {
        //加载 permission tree data
        var load = layer.load();
        $.post("getPermissionTree.shtml", {}, function (data) {
            layer.close(load);
            if (data && !data.length) {
                return $("#getPermissionTree").html('<code>您没有任何权限。只有默认的个人中心。</code>'), !1;
            }
            $('#getPermissionTree').treeview({
                levels: 1,//层级
                color: "#428bca",
                nodeIcon: "glyphicon glyphicon-user",
                showTags: true,//显示数量
                data: data//数据
            });
        }, 'json');
    });
</script>
</body>
</html>