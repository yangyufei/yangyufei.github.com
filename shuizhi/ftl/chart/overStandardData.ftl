<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>超标数据图</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/common.less" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/chart/overStandardData.less">
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
    <script type="text/javascript" src="${basePath}/js/chart/overStandardData.js"></script>
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
                <p><a href="#" class="contentName"><var class="navName">超标数据图</var></p>
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
                            </div>
                            <div class="form-line-wrap flw-cb-wrap">
                                <div class="form-group">
                                    <label for="" class="fl">超标程度：</label>
                                    <div class="r-checkbox">
                                        <span>
                                            <input type="checkbox" id="level1"/>
                                            <label for="level1" name="cblab">一般超标</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="level2"/>
                                            <label for="level2" name="cblab">严重超标</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="level3"/>
                                            <label for="level3" name="cblab">可能事故超标</label>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-line-wrap flw-cb-wrap">
                                <div class="form-group">
                                    <label for="" class="fl">站点选择：</label>
                                    <div class="r-checkbox">
                                        <span>
                                            <input type="checkbox" id="site1"/>
                                            <label for="site1" name="cblab">白马河站</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="site2"/>
                                            <label for="site2" name="cblab">省点大站</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="site3"/>
                                            <label for="site3" name="cblab">五四河站</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="site4"/>
                                            <label for="site4" name="cblab">瀛州河站</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="site5"/>
                                            <label for="site5" name="cblab">凤坂河站</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="site6"/>
                                            <label for="site6" name="cblab">彬德闸排涝站</label>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-line-wrap flw-cb-wrap">
                                <div class="form-group">
                                    <label for="" class="fl">参数选择：</label>
                                    <div class="r-checkbox">
                                        <span>
                                            <input type="checkbox" id="params1"/>
                                            <label for="params1" name="cblab">总磷</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="params2"/>
                                            <label for="params2" name="cblab">总氮</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="params3"/>
                                            <label for="params3" name="cblab">溶解氧</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="params4"/>
                                            <label for="params4" name="cblab">电导率</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="params5"/>
                                            <label for="params5" name="cblab">浊度</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="params6"/>
                                            <label for="params6" name="cblab">氨氮</label>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="tar search-btn-wrap">
                                <button type="button" class="search-btn">查询</button>
                            </div>
                        </form>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>超标数据图</var>
                        </h2>
                        <div class="screenCon">
                            <div id="chart1" class="chartBox"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>