<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>联网情况报表</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/common.less" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/reportForm/netCondition.less">
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
    <script type="text/javascript" src="${basePath}/js/reportForm/netCondition.js"></script>
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
                <p><a href="#" class="contentName"><var class="navName">联网情况报表</var></p>
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
                                    <label for="">站点状态：</label>
                                    <select id="dateType1" class="selectpicker">
                                        <option value="1">在线</option>
                                        <option value="2">离线</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="startDate">开始时间：</label>
                                    <input id="startDate" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <div class="form-group">
                                    <label for="endDate">结束时间：</label>
                                    <input id="endDate" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <button type="button" class="search-btn">查询</button>
                            </div>
                        </form>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>联网情况报表</var>
                            <button class="export-btn fr">
                                <img src="${basePath}/img/export.png" alt="">
                                导出数据
                            </button>
                        </h2>
                        <div class="screenCon">
                            <table class="table table-striped table-wrap">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>
                                        MN号
                                    </th>
                                    <th>
                                        站点名称
                                    </th>
                                    <th>
                                        实时状态
                                    </th>
                                    <th>
                                        最近上线时间
                                    </th>
                                    <th>
                                        在线时长(分钟)
                                    </th>
                                    <th>
                                        离线时长(分钟)
                                    </th>
                                    <th>
                                        离线次数
                                    </th>
                                    <th>
                                        累计流量(B)
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>mf34848</td>
                                    <td>白马河站</td>
                                    <td>在线</td>
                                    <td>2018年5月21日 11:10:21</td>
                                    <td>12734</td>
                                    <td>12</td>
                                    <td>23</td>
                                    <td>2790</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>mf34848</td>
                                    <td>白马河站</td>
                                    <td>在线</td>
                                    <td>2018年5月21日 11:10:21</td>
                                    <td>12734</td>
                                    <td>12</td>
                                    <td>23</td>
                                    <td>2790</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>mf34848</td>
                                    <td>白马河站</td>
                                    <td>在线</td>
                                    <td>2018年5月21日 11:10:21</td>
                                    <td>12734</td>
                                    <td>12</td>
                                    <td>23</td>
                                    <td>2790</td>
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