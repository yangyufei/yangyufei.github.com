<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>水质变化趋势对比图</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/common.less" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/chart/waterChangeTrend.less">
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
    <script type="text/javascript" src="${basePath}/js/chart/waterChangeTrend.js"></script>
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
                <p><a href="#" class="contentName"><var class="navName">水质分析评价图表</var></p>
            </div>
            <div class="dataAndLongRange clearfix">
                <span class="selected">实时趋势分析图</span>
                <span>时段趋势分析图</span>
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
                                    <span>
                                        <input type="checkbox" id="eliminate"/>
                                        <label for="eliminate" name="cblab">剔除异常值</label>
                                    </span>
                                </div>
                            </div>
                            <div class="form-line-wrap flw-cb-wrap">
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
                            </div>
                            <div class="tar search-btn-wrap">
                                <button type="button" class="search-btn">查询</button>
                            </div>
                        </form>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>实时趋势分析图</var>
                        </h2>
                        <div class="screenCon">
                            <div class="chart-type-box">
                                <div class="chart-type-wrap">
                                    <span class="type-s">
                                        <input type="checkbox" id="site1"/>
                                        <label for="site1" name="cblab">
                                            <div class='type-bar'></div>
                                            白马河站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site2"/>
                                        <label for="site2" name="cblab">
                                            <div class='type-bar'></div>
                                            省电大站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site3"/>
                                        <label for="site3" name="cblab">
                                            <div class='type-bar'></div>
                                            五四河站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site4"/>
                                        <label for="site4" name="cblab">
                                            <div class='type-bar'></div>
                                            瀛洲河站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site5"/>
                                        <label for="site5" name="cblab">
                                            <div class='type-bar'></div>
                                            凤坂河站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site6"/>
                                        <label for="site6" name="cblab">
                                            <div class='type-bar'></div>
                                            彬德闸排涝站
                                        </label>
                                    </span>
                                </div>
                                <div>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType1"/>
                                        <label for="chartType1" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅰ类
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType2"/>
                                        <label for="chartType2" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅱ类
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType3"/>
                                        <label for="chartType3" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅲ类
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType4"/>
                                        <label for="chartType4" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅳ类
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType5"/>
                                        <label for="chartType5" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅴ类
                                        </label>
                                    </span>
                                </div>
                            </div>
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
                                    <label for="">时间类型：</label>
                                    <select id="dateType1" class="selectpicker">
                                        <option value="1">时间段报表</option>
                                        <option value="2">日报表</option>
                                        <option value="3">周报表</option>
                                    </select>
                                </div>
                                <span class="date-wrap">
                                    <div class="form-group">
                                        <label for="startDate1">开始时间：</label>
                                        <input id="startDate1" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="endDate1">结束时间：</label>
                                        <input id="endDate1" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                    </div>
                                </span>
                                <span class="week-wrap">
                                    <div class="form-group">
                                        <label for="year">选择周：</label>
                                        <input id="year" class="form-control date-input" type="text" onClick="WdatePicker({dateFmt:'yyyy年', onpicking: changeWeekList})"/>
                                        <select id="weekList" class="selectpicker">
                                        </select>
                                    </div>
                                </span>
                            </div>
                            <div class="form-line-wrap flw-cb-wrap">
                                <div class="form-group">
                                    <label for="paramsChoose2">参数选择：</label>
                                    <select id="paramsChoose2" class="selectpicker">
                                        <option value="1">流速</option>
                                        <option value="2">水温</option>
                                        <option value="3">氨氮</option>
                                        <option value="4">溶解氧</option>
                                        <option value="5">水位</option>
                                        <option value="6">总磷</option>
                                    </select>
                                </div>
                            </div>
                            <div class="tar search-btn-wrap">
                                <button type="button" class="search-btn">查询</button>
                            </div>
                        </form>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>时段趋势分析图</var>
                        </h2>
                        <div class="screenCon">
                            <div class="chart-type-box">
                                <div class="chart-type-wrap">
                                    <span class="type-s">
                                        <input type="checkbox" id="site1-1"/>
                                        <label for="site1-1" name="cblab">
                                            <div class='type-bar'></div>
                                            白马河站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site1-2"/>
                                        <label for="site1-2" name="cblab">
                                            <div class='type-bar'></div>
                                            省电大站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site1-3"/>
                                        <label for="site1-3" name="cblab">
                                            <div class='type-bar'></div>
                                            五四河站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site1-4"/>
                                        <label for="site1-4" name="cblab">
                                            <div class='type-bar'></div>
                                            瀛洲河站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site1-5"/>
                                        <label for="site1-5" name="cblab">
                                            <div class='type-bar'></div>
                                            凤坂河站
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="site1-6"/>
                                        <label for="site1-6" name="cblab">
                                            <div class='type-bar'></div>
                                            彬德闸排涝站
                                        </label>
                                    </span>
                                </div>
                                <div>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType1-1"/>
                                        <label for="chartType1-1" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅰ类
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType1-2"/>
                                        <label for="chartType1-2" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅱ类
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType1-3"/>
                                        <label for="chartType1-3" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅲ类
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType1-4"/>
                                        <label for="chartType1-4" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅳ类
                                        </label>
                                    </span>
                                    <span class="type-s">
                                        <input type="checkbox" id="chartType1-5"/>
                                        <label for="chartType1-5" name="cblab">
                                            <div class='type-line'></div>
                                            Ⅴ类
                                        </label>
                                    </span>
                                </div>
                            </div>
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