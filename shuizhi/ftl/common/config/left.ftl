<#macro user index>
<div class="navDiv">
    <ul class="navUl">
        <li class="ecological">
            <a href="#">
                <span></span>
                <var>生态可视化</var>
            </a>
            <ol>
                <li>
                    <a href="${basePath}/ecological/ecological.shtml">生态可视化</a>
                </li>
            </ol>
        </li>

        <li class="map">
            <a href="#">
                <span></span>
                <var>地图与监控</var>
            </a>
            <ol>
                <li>
                    <a href="${basePath}/map/map.shtml">地图与监控</a>
                </li>
            </ol>
        </li>
        <li class="site">
            <a href="#">
                <span></span>
                <var>站点管理</var>
            </a>
            <ol>
                <li>
                    <a href="${basePath}/site/siteVisualization.shtml">站点可视化</a>
                </li>
                <li>
                    <a href="${basePath}/site/videoSurveillance.shtml">视频监控</a>
                </li>
                <li>
                    <a href="${basePath}/site/longRangeControl.shtml">远程控制</a>
                </li>
                <li>
                    <a href="${basePath}/site/runset.shtml">运行设置</a>
                </li>
                <li>
                    <a href="${basePath}/site/siteInfoManage.shtml">站点信息管理</a>
                </li>
                <li>
                    <a href="${basePath}/site/equipManage.shtml">设备管理</a>
                </li>
            </ol>
        </li>
        <li class="permission">
            <a href="#">
                <span></span>
                <var>权限相关</var>
            </a>
            <ol>
                <li><a href="${basePath}/user/updateSelf.shtml">资料修改</a></li>
                <li><a href="${basePath}/user/updatePswd.shtml">密码修改</a></li>
                <li><a href="${basePath}/member/list.shtml">用户列表</a></li>
                <li><a href="${basePath}/role/index.shtml">角色列表</a></li>
                <li><a href="${basePath}/role/allocation.shtml">角色分配</a></li>
                <li><a href="${basePath}/permission/index.shtml">权限列表</a></li>
                <li><a href="${basePath}/permission/allocation.shtml">权限分配</a></li>
                <li><a href="${basePath}/role/mypermission.shtml">我的权限</a></li>
            </ol>
        </li>
        <li class="dataManage">
            <a href="#">
                <span></span>
                <var>数据管理</var>
            </a>
            <ol>
                <li>
                    <a href="${basePath}/dataManage/dataSearch.shtml">数据查询</a>
                </li>
                <li>
                    <a href="${basePath}/dataManage/dataIntegrity.shtml">数据完整性统计</a>
                </li>
                <li>
                    <a href="${basePath}/dataManage/dataValidity.shtml">数据有效性统计</a>
                </li>
                <li>
                    <a href="${basePath}/dataManage/dataExpert.shtml">数据录入</a>
                </li>
                <li>
                    <a href="${basePath}/dataManage/logQuery.shtml">日志查询</a>
                </li>
            </ol>
        </li>
        <li class="reportForm">
            <a href="#">
                <span></span>
                <var>统计报表</var>
            </a>
            <ol>
                <li>
                    <a href="${basePath}/reportForm/monitorData.shtml">监测数据报表</a>
                </li>
                <li>
                    <a href="${basePath}/reportForm/qualityControl.shtml">质控报表</a>
                </li>
                <li>
                    <a href="${basePath}/reportForm/faultCondition.shtml">故障情况报表</a>
                </li>
                <li>
                    <a href="${basePath}/reportForm/netCondition.shtml">联网情况报表</a>
                </li>
            </ol>
        </li>
        <li class="chart">
            <a href="#">
                <span></span>
                <var>统计图表</var>
            </a>
            <ol>
                <li>
                    <a href="${basePath}/chart/waterAnalysis.shtml">水质分析图表</a>
                </li>
                <li>
                    <a href="${basePath}/chart/waterChangeTrend.shtml">水质变化趋势对比图</a>
                </li>
                <li>
                    <a href="${basePath}/chart/minMaxCompare.shtml">最大最小值对比分析图</a>
                </li>
                <li>
                    <a href="${basePath}/chart/waterTime.shtml">水质时间比例分析图</a>
                </li>
                <li>
                    <a href="${basePath}/chart/waterPollution.shtml">水质污染指数分析图</a>
                </li>
                <li>
                    <a href="${basePath}/chart/overStandardData.shtml">超标数据图</a>
                </li>
                <li>
                    <a href="${basePath}/chart/dataCompare.shtml">数据同比环比分析</a>
                </li>
            </ol>
        </li>
        <li class="monitorStandard">
            <a href="#">
                <span></span>
                <var>监测标准管理</var>
            </a>
            <ol>
                <li>
                    <a href="${basePath}/monitorStandard/monitorConfigure.shtml">监测标准配置</a>
                </li>
            </ol>
        </li>
        <li class="alarm">
            <a href="#">
                <span></span>
                <var>告警管理</var>
            </a>
            <ol>
                <li>
                    <a href="${basePath}/alarm/realTimeAlarm.shtml">告警管理</a>
                </li>
            </ol>
        </li>
        <li class="systemSetup">
            <a href="#">
                <span></span>
                <var>系统设置</var>
            </a>
            <ol>
                <li>
                    <a href="${basePath}/systemSetup/systemSetup.shtml">系统设置</a>
                </li>
            </ol>
        </li>
    </ul>
</div>
<script>
    var url = window.location + "";
    var lastIndex = url.indexOf("8780");
    var beginStr = url.substring(lastIndex);
    console.log(beginStr);
    $(".navUl li a").each(function(){
        var aBeforeUrl = $(this).attr("href");
//        console.log(aBeforeUrl);
//        var aSelect = aBeforeUrl.indexOf("/");
//        var aUrl = aBeforeUrl.substring(aSelect);
//        console.log(aUrl);
        if(beginStr.indexOf(aBeforeUrl) != -1){
            console.log(aBeforeUrl);
            $(".navUl li").removeClass("active open");
            $(".navUl ol").hide();
//            console.log($(".navUl li a[href='"+aBeforeUrl+"']"));
            $(".navUl li a[href='"+aBeforeUrl+"']").parent("li").addClass("active").parent("ol").show().parent("li").addClass("active open");
        }
    })
    $(".navUl >li").click(function(){
//        alert("2222");
        $(this).toggleClass("open");
        if($(this).hasClass("open")){
            $(this).find("ol").show(300).parent().siblings().removeClass("open").find("ol").hide(300);
        }else{
            $(this).find("ol").hide(300);
        }
    })
</script>
</#macro>
