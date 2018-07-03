<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>故障情况报表</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/common.less" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/reportForm/faultCondition.less">
    <link rel="stylesheet" type="text/css" href="${basePath}/js/time/skin/WdatePicker.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/js/time/skin/default/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/js/time/skin/whyGreen/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap-select.css" />
    <script type="text/javascript" src="${basePath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/less.js"></script>
    <script type="text/javascript" src="${basePath}/js/common.js"></script>
    <script type="text/javascript" src="${basePath}/js/time/WdatePicker.js"></script>
    <script type="text/javascript" src="${basePath}/js/bootstrap.js"></script>
    <script type="text/javascript" src="${basePath}/js/bootstrap-select.js"></script>
    <script type="text/javascript" src="${basePath}/js/echarts.js"></script>
    <!-- 页面特有js -->
    <script type="text/javascript" src="../../js/reportForm/faultCondition.js"></script>
</head>
<body>
<div class="wrap">
    <div class="headTitle clearfix"></div>
    <div class="wrap-con">
        <div class="nav">

        </div>
        <div class="wrapCon">
            <div class="nowAddr clearfix">
                <span>当前位置：</span>
                <p><a href="#" class="contentName"><var class="navName">故障情况报表</var></p>
            </div>
            <div class="dataAndLongRangeCon">
                <div class="dataAcquisition selected">
                    <div class="screen">
                        <h2 class="clearfix">
                            <var>筛选</var>
                        </h2>
                        <form class="form-inline screenCon">
                            <div class="form-line-wrap">
                                <div class="form-group">
                                    <label for="startDate">开始时间：</label>
                                    <input id="startDate" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <div class="form-group">
                                    <label for="endDate">截止时间：</label>
                                    <input id="endDate" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <button type="button" class="search-btn">查询</button>
                            </div>
                        </form>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>故障情况报表</var>
                        </h2>
                        <div class="screenCon">
                            <table class="table table-striped table-wrap">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>
                                        故障站点
                                    </th>
                                    <th>
                                        发现时间
                                    </th>
                                    <th>
                                        故障类型
                                    </th>
                                    <th>
                                        故障描述
                                    </th>
                                    <th>
                                        影响的仪器
                                    </th>
                                    <th>
                                        获取途径
                                    </th>
                                    <th>
                                        解决时间
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>省电大站</td>
                                    <td>2018-05-14</td>
                                    <td>待填充</td>
                                    <td>待填充</td>
                                    <td>待填充</td>
                                    <td>待填充</td>
                                    <td>2018-05-15</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>故障类型饼图</var>
                        </h2>
                        <div class="screenCon">
                            <p class="chart-title tac">故障平均解决时间：<span>2小时</span></p>
                            <div id="myChart" class="chartBox"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 页面特有js -->
<script type="text/javascript" src="${basePath}/js/reportForm/faultCondition.js"></script>
</body>
</html>