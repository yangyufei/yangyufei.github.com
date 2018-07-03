<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>数据同比环比分析</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/common.less" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/chart/dataCompare.less">
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
    <script type="text/javascript" src="${basePath}/js/chart/dataCompare.js"></script>
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
                <p><a href="#" class="contentName"><var class="navName">数据同比环比分析</var></p>
            </div>
            <div class="dataAndLongRange clearfix">
                <span class="selected">数据同比分析图</span>
                <span>数据环比分析图</span>
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
                                    <label for="paramsChoose">参数选择：</label>
                                    <select id="paramsChoose" class="selectpicker">
                                        <option value="1">流速</option>
                                        <option value="2">水温</option>
                                        <option value="3">氨氮</option>
                                        <option value="4">溶解氧</option>
                                        <option value="5">水位</option>
                                        <option value="6">总磷</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>时间：</label>
                                    <input class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy年'})"/>
                                    <input class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'MM月'})"/>
                                </div>
                                <button type="button" class="search-btn">查询</button>
                            </div>
                        </form>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>数据同比分析图</var>
                            <ul class="fr clearfix legend-wrap">
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>2016</span>
                                </li>
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>2017</span>
                                </li>
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>增长率</span>
                                </li>
                            </ul>
                        </h2>
                        <div class="screenCon">
                            <div id="chart1" class="chartBox"></div>
                        </div>
                    </div>
                </div>
                <div class="dataAcquisition">
                    <div class="screen">
                        <h2 class="clearfix">
                            <var>筛选</var>
                        </h2>
                        <form class="form-inline screenCon">
                            <div class="form-line-wrap">
                                <div class="form-group">
                                    <label for="paramsChoose1">参数选择：</label>
                                    <select id="paramsChoose1" class="selectpicker">
                                        <option value="1">流速</option>
                                        <option value="2">水温</option>
                                        <option value="3">氨氮</option>
                                        <option value="4">溶解氧</option>
                                        <option value="5">水位</option>
                                        <option value="6">总磷</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>月份：</label>
                                    <input class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM'})"/>
                                </div>
                                <button type="button" class="search-btn">查询</button>
                            </div>
                        </form>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>数据环比分析图</var>
                            <ul class="fr clearfix legend-wrap">
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>2017-11</span>
                                </li>
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>2017-12</span>
                                </li>
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>增长率</span>
                                </li>
                            </ul>
                        </h2>
                        <div class="screenCon">
                            <div id="chart2" class="chartBox"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>