<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>质控报表</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/common.less" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/reportForm/qualityControl.less">
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
    <script type="text/javascript" src="${basePath}/js/reportForm/qualityControl.js"></script>
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
                <p><a href="#" class="contentName">白马河站</a>&nbsp;/&nbsp;<var class="navName">质控报表</var></p>
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
                                    <div class="r-checkbox">
                                        <span>
                                            <input type="checkbox" id="params1"/>
                                            <label for="params1" name="cblab">低于检出限+L</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="params2"/>
                                            <label for="params2" name="cblab">过滤部分不能为零的值</label>
                                        </span>
                                        <span>
                                            <input type="checkbox" id="params3"/>
                                            <label for="params3" name="cblab">过滤部分不能小于检出值的值</label>
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
                            <var>自动站点名称：白马河</var>
                            <button class="export-btn fr">
                                <img src="${basePath}/img/export.png" alt="">
                                导出数据
                            </button>
                        </h2>
                        <div class="screenCon">
                            <table class="table table-striped table-wrap">
                                <caption class="tac weekly-report-title">
                                    <h3>水质自动监测站质控表</h3>
                                    <p>2018年第42周</p>
                                    <p class="time tar">上报时间：2018-05-24</p>
                                </caption>
                                <thead>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th colspan="3">
                                        质控样测定结果
                                    </th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <th>编号</th>
                                    <th>
                                        监测项目
                                    </th>
                                    <th>
                                        单位
                                    </th>
                                    <th>
                                        监测时间
                                    </th>
                                    <th>
                                        标样值
                                    </th>
                                    <th>
                                        测定值
                                    </th>
                                    <th>
                                        相对误差(%)
                                    </th>
                                    <th>备注</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>高锰酸钾指数</td>
                                    <td>mg/L</td>
                                    <td>2018年5月21日 11:10:21</td>
                                    <td>4.0</td>
                                    <td>3.7860</td>
                                    <td>-5.35%</td>
                                    <td>无</td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="be-careful clearfix">
                                <p class="fl lp">
                                    <span>托管站：福州市监测中心</span>
                                    <span>值班人：运维001</span>
                                </p>
                                <p class="fr rp">
                                    <span>终审：</span>
                                    <span>复审：</span>
                                    <span>初审：</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>