<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8"/>
    <title>${token.nickname} —个人中心</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css"/>
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less"/>
    <script type="text/javascript" src="${basePath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/less.js"></script>
    <script  src="${basePath}/js/common/layer/layer.js"></script>
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
            测试
        </div>
        </div>
    </div>
</body>
</html>