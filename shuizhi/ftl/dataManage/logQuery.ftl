<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>日志查询</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/common.less" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/logQuery.less">
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
    <script type="text/javascript" src="${basePath}/js/dataManage/logQuery.js"></script>
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
                <p><a href="#" class="contentName">白马河站</a>&nbsp;/&nbsp;<var class="navName">日志查询</var></p>
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
                                    <label for="endDate">结束时间：</label>
                                    <input id="endDate" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <div class="form-group">
                                    <label for="">日志类型：</label>
                                    <select id="dateType1" class="selectpicker min-select">
                                        <option value="1">所有日志</option>
                                        <option value="2">仪器日志</option>
                                    </select>
                                </div>
                                <button type="button" class="search-btn">查询</button>
                            </div>
                        </form>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>日志查询</var>
                            <button class="export-btn fr">
                                <img src="${basePath}/img/export.png" alt="">
                                导出数据
                            </button>
                        </h2>
                        <div class="screenCon">
                            <table class="table table-striped table-wrap">
                                <thead>
                                <tr>
                                    <th>
                                        <span>监测时间</span>
                                    </th>
                                    <th>
                                        <span>日志类型</span>
                                    </th>
                                    <th>
                                        <span>日志内容</span>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>2018年5月21日 19:54</td>
                                    <td>短信日志</td>
                                    <td>「流程：检测液位4成功，保存五参数数据」</td>
                                </tr>
                                <tr>
                                    <td>2018年5月21日 19:54</td>
                                    <td>短信日志</td>
                                    <td>「流程：检测液位4成功，保存五参数数据」</td>
                                </tr>
                                <tr>
                                    <td>2018年5月21日 19:54</td>
                                    <td>短信日志</td>
                                    <td>「流程：检测液位4成功，保存五参数数据」</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>