<#macro top index>
<script baseUrl="${basePath}" src="${basePath}/js/user.login.js"></script>
<a href="" class="titleName">斯坦道水质监测智慧平台 开发环境</a>
<div class="set">
    <a href="javascript:void(0);" onclick="logout();" class="logout">
        <i>退出</i>
        <span></span>
    </a>
    <span class="headerline"></span>
    <a href="" class="message"><strong>2</strong></a>
    <div class="user">
        <var>您好！<i>${token.nickname}</i></var>
        <div>
            <img src="${basePath}/img/pic.png" alt="" />
        </div>
    </div>
</div>
</#macro>
