<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>数据查询</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/common.less" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/dataSearch.less">
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
    <script type="text/javascript" src="${basePath}/js/dataManage/dataSearch.js"></script>
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
                <p><a href="#" class="contentName">白马河站</a>&nbsp;/&nbsp;<var class="navName">数据查询</var></p>
            </div>
            <div class="dataAndLongRange clearfix">
                <span class="selected">监测数据查询</span>
                <span>标样核查</span>
                <span>加标回收</span>
            </div>
            <div class="dataAndLongRangeCon">
                <!-- 检测数据查询 -->
                <div class="dataAcquisition selected">
                    <div class="screen">
                        <h2 class="clearfix">
                            <var>筛选</var>
                            <a href="javascript:;" class="fr ablue">
                                <span>查看标记图表集</span>
                            </a>
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
                                <a href="javascript:;" class="ablue s-params">
                                    <span data-toggle="modal" data-target="#paramsSelect">参数选择</span>
                                </a>
                            </div>
                            <div class="form-line-wrap">
                                <div class="form-group">
                                    <label for="">数据类型：</label>
                                    <select id="dateType1" class="selectpicker">
                                        <option value="1">小时数据</option>
                                        <option value="2">分钟数据</option>
                                        <option value="3">实时数据</option>
                                    </select>
                                    <select id="dateType2" class="selectpicker">
                                        <option value="1">全部数据</option>
                                        <option value="2">只看超标数据</option>
                                        <option value="3">只看异常数据</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">数据来源：</label>
                                    <select id="dateSource1" class="selectpicker">
                                        <option value="1">未审核数据</option>
                                        <option value="2">已审核数据</option>
                                    </select>
                                    <select id="dateSource2" class="selectpicker">
                                        <option value="1">全部数据</option>
                                        <option value="2">常规监测周期上报</option>
                                        <option value="3">自动远程质控数据</option>
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
                            <var>监测数据</var>
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
                                        <span>监测时间</span><br/>
                                        <span class="text-gray">(标准限值／单位)</span>
                                    </th>
                                    <th>
                                        <span>pH</span><br/>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>溶解氧</span><br/>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>浊度</span><br/>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>CODMn</span><br/>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>氦氢</span><br/>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>总磷</span><br/>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2018年5月21日 09:00</td>
                                    <td>6.90</td>
                                    <td>4.56</td>
                                    <td class="text-f7" data-toggle="modal" data-target="#myModal">6</td>
                                    <td>1.4853</td>
                                    <td>0.3421</td>
                                    <td>0.9584</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2018年5月21日 09:00</td>
                                    <td>6.90</td>
                                    <td>4.56</td>
                                    <td class="text-f7" data-toggle="modal" data-target="#myModal">6</td>
                                    <td>1.4853</td>
                                    <td>0.3421</td>
                                    <td>0.9584</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>2018年5月21日 09:00</td>
                                    <td>6.90</td>
                                    <td>4.56</td>
                                    <td class="text-f7" data-toggle="modal" data-target="#myModal">6</td>
                                    <td>1.4853</td>
                                    <td>0.3421</td>
                                    <td>0.9584</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- 标样核查 -->
                <div class="longRangeControl">
                    <div class="screen">
                        <h2 class="clearfix">
                            <var>筛选</var>
                            <a href="javascript:;" class="fr text-f7 fs14">*公式：（实测值-标准值）/标准值*100%</a>
                        </h2>
                        <form class="form-inline screenCon">
                            <div class="form-line-wrap">
                                <div class="form-group">
                                    <label for="startDate1">开始时间：</label>
                                    <input id="startDate1" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <div class="form-group">
                                    <label for="endDate1">结束时间：</label>
                                    <input id="endDate1" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <div class="form-group">
                                    <label for="">参数选择：</label>
                                    <select id="paramsChoose1" class="selectpicker min-select">
                                        <option value="1">流速</option>
                                        <option value="2">水温</option>
                                        <option value="3">溶解氧</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-line-wrap">
                                <div class="form-group">
                                    <label for="">数据来源：</label>
                                    <select id="paramsChoose2" class="selectpicker">
                                        <option value="1">全部数据</option>
                                        <option value="2">常规监测周期上报</option>
                                        <option value="3">自动远程质控数据</option>
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
                            <var>标样核查柱状图</var>
                            <ul class="fr clearfix legend-wrap">
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>正常</span>
                                </li>
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>超标</span>
                                </li>
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>标准线</span>
                                </li>
                            </ul>
                        </h2>
                        <div class="screenCon">
                            <div id="chart1" class="chart-wrap"></div>
                        </div>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>标样核查表</var>
                        </h2>
                        <div class="screenCon">
                            <table class="table table-striped table-wrap">
                                <thead>
                                <tr>
                                    <th>
                                        <span>编号</span>
                                    </th>
                                    <th>
                                        <span>时间</span>
                                    </th>
                                    <th>
                                        <span>参数</span>
                                    </th>
                                    <th>
                                        <span>标准值</span>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>实测值</span>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>标记</span>
                                    </th>
                                    <th>
                                        <span>核查类型</span>
                                    </th>
                                    <th>
                                        <span>误差率</span>
                                        <span class="text-gray">(%)</span>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2018年5月21日 09:12</td>
                                    <td>总磷</td>
                                    <td>0.05</td>
                                    <td>0.052</td>
                                    <td>sc</td>
                                    <td>基站核查</td>
                                    <td>7%</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2018年5月21日 09:12</td>
                                    <td>总磷</td>
                                    <td>0.05</td>
                                    <td>0.052</td>
                                    <td>sc</td>
                                    <td>基站核查</td>
                                    <td>7%</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>2018年5月21日 09:12</td>
                                    <td>总磷</td>
                                    <td>0.05</td>
                                    <td>0.052</td>
                                    <td>sc</td>
                                    <td>基站核查</td>
                                    <td>7%</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- 加标回收 -->
                <div class="longRangeControl">
                    <div class="screen">
                        <h2 class="clearfix">
                            <var>筛选</var>
                            <a href="javascript:;" class="fr text-f7 fs14">*公式：(C混合浓度-C水样浓度)*200/(C标样浓度*V标样体积)*100%</a>
                        </h2>
                        <form class="form-inline screenCon">
                            <div class="form-line-wrap">
                                <div class="form-group">
                                    <label for="startDate2">开始时间：</label>
                                    <input id="startDate2" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <div class="form-group">
                                    <label for="endDate2">结束时间：</label>
                                    <input id="endDate2" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <div class="form-group">
                                    <label for="">参数选择：</label>
                                    <select id="paramsChoose3" class="selectpicker min-select">
                                        <option value="1">流速</option>
                                        <option value="2">水温</option>
                                        <option value="3">溶解氧</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-line-wrap">
                                <div class="form-group">
                                    <label for="">数据来源：</label>
                                    <select id="paramsChoose4" class="selectpicker">
                                        <option value="1">全部数据</option>
                                        <option value="2">常规监测周期上报</option>
                                        <option value="3">自动远程质控数据</option>
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
                            <var>加标回收柱状图</var>
                            <ul class="fr clearfix legend-wrap">
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>正常</span>
                                </li>
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>超标</span>
                                </li>
                                <li class="fl">
                                    <span class="tl"></span>
                                    <span>标准线</span>
                                </li>
                            </ul>
                        </h2>
                        <div class="screenCon">
                            <div id="chart2" class="chart-wrap"></div>
                        </div>
                    </div>
                    <div class="screen ctx-wrap">
                        <h2 class="clearfix">
                            <var>加标回收表</var>
                        </h2>
                        <div class="screenCon">
                            <table class="table table-striped table-wrap">
                                <thead>
                                <tr>
                                    <th>
                                        <span>编号</span>
                                    </th>
                                    <th>
                                        <span>时间</span>
                                    </th>
                                    <th>
                                        <span>参数</span>
                                    </th>
                                    <th>
                                        <span>水样值</span>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>混样值</span>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>加标浓度</span>
                                        <span class="text-gray">(mg/L)</span>
                                    </th>
                                    <th>
                                        <span>加标体积</span>
                                        <span class="text-gray">(ml)</span>
                                    </th>
                                    <th>
                                        <span>加标回收率</span>
                                        <span class="text-gray">(%)</span>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2018年5月21日 09:12</td>
                                    <td>氯化物</td>
                                    <td>3.0899</td>
                                    <td>3.0899</td>
                                    <td>2000</td>
                                    <td>3.0899</td>
                                    <td>3.0899</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2018年5月21日 09:12</td>
                                    <td>总磷</td>
                                    <td>0.05</td>
                                    <td>0.052</td>
                                    <td>sc</td>
                                    <td>基站核查</td>
                                    <td>7%</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>2018年5月21日 09:12</td>
                                    <td>总磷</td>
                                    <td>0.05</td>
                                    <td>0.052</td>
                                    <td>sc</td>
                                    <td>基站核查</td>
                                    <td>7%</td>
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
<!-- 数据报表弹窗 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog data-quality-modal">
        <div class="modal-content">
            <div class="modal-header data-tab-wrap clearfix">
                <div class="tab selected">数据质量控制报告</div>
                <div class="tab">数据专家</div>
                <div class="tab">录入实验室比对数据</div>
            </div>
            <div class="modal-body">
                <!--数据质量控制报告-->
                <div class="data-quality-wrap selected">
                    <div class="data-quality-box">
                        <h4 class="quality-title">数据基本情况(当前数据)</h4>
                        <table class="table table-striped table-wrap">
                            <thead>
                            <tr>
                                <th>
                                    <span>监测时间</span>
                                </th>
                                <th>
                                    <span>站点名称</span>
                                </th>
                                <th>
                                    <span>参数</span>
                                </th>
                                <th>
                                    <span>监测值</span>
                                </th>
                                <th>
                                    <span>单位</span>
                                </th>
                                <th>
                                    <span>分析方法</span>
                                </th>
                                <th>
                                    <span>原始数据标记</span>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>2018年5月21日 09:12</td>
                                <td>白马河站</td>
                                <td>总磷</td>
                                <td class="text-f7">0.5411</td>
                                <td>「≥0.2」mg/L</td>
                                <td>磷钼蓝分光光度法</td>
                                <td class="text-f7">O 超标</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="data-quality-box">
                        <h4 class="quality-title">判定条件</h4>
                        <table class="table table-striped table-wrap mb10">
                            <caption>加标回收：(<span class="text-f7">加标回收率：C混合浓度-C水样浓度)*200/C标样浓度*V标样体积*100%</span>)</caption>
                            <thead>
                            <tr>
                                <th>
                                    <span>时间</span>
                                </th>
                                <th>
                                    <span>参数</span>
                                </th>
                                <th>
                                    <span>水样值</span>
                                </th>
                                <th>
                                    <span>混样值</span>
                                </th>
                                <th>
                                    <span>加标浓度</span>
                                </th>
                                <th>
                                    <span>加标体积</span>
                                </th>
                                <th>
                                    <span>加标回收率</span>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>2018年5月21日 09:12</td>
                                <td>总磷</td>
                                <td>0.0554</td>
                                <td>0.1025</td>
                                <td>100</td>
                                <td>0.1</td>
                                <td>94.20%</td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="table table-striped table-wrap">
                            <caption>仪器核查(核查对比数据)</caption>
                            <thead>
                            <tr>
                                <th>
                                    <span>时间</span>
                                </th>
                                <th>
                                    <span>参数</span>
                                </th>
                                <th>
                                    <span>实测值</span>
                                </th>
                                <th>
                                    <span>标准值</span>
                                </th>
                                <th>
                                    <span>标记</span>
                                </th>
                                <th>
                                    <span>误差率</span>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>2018年5月21日 09:12</td>
                                <td>总磷</td>
                                <td>0.0554</td>
                                <td>0.05</td>
                                <td>sc</td>
                                <td>7%</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="data-quality-box">
                        <h4 class="quality-title">系统以及仪器的可溯源日志</h4>
                        <table class="table table-striped table-wrap">
                            <thead>
                            <tr>
                                <th>
                                    <span>日志时间</span>
                                </th>
                                <th>
                                    <span>日志内容</span>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>2018年5月21日 09:12</td>
                                <td>进入测试周期</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="data-quality-box">
                        <h4 class="quality-title">主要运维任务</h4>
                        <table class="table table-striped table-wrap">
                            <thead>
                            <tr>
                                <th>
                                    <span>运维时间</span>
                                </th>
                                <th>
                                    <span>主要运维内容</span>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>2018年5月21日 09:12</td>
                                <td>更换标准样品</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--数据专家-->
                <div class="data-quality-wrap">
                    <div class="data-quality-box">
                        <h4 class="quality-title">原始数据信息</h4>
                        <table class="table table-striped table-wrap">
                            <thead>
                            <tr>
                                <th>
                                    <span>监测时间</span>
                                </th>
                                <th>
                                    <span>站点名称</span>
                                </th>
                                <th>
                                    <span>参数名称</span>
                                </th>
                                <th>
                                    <span>原始数值</span>
                                </th>
                                <th>
                                    <span>原始标记</span>
                                </th>
                                <th>
                                    <span>自动审核标记</span>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>2018年5月21日 09:12</td>
                                <td>总磷</td>
                                <td>0.5411</td>
                                <td>1.2172</td>
                                <td>无</td>
                                <td>无</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="data-quality-box">
                        <h4 class="quality-title">历史修正信息</h4>
                        <table class="table table-striped table-wrap mb10">
                            <thead>
                            <tr>
                                <th>
                                    <span>修正时间</span>
                                </th>
                                <th>
                                    <span>修正值</span>
                                </th>
                                <th>
                                    <span>修正标记</span>
                                </th>
                                <th>
                                    <span>操作员</span>
                                </th>
                                <th>
                                    <span>修正原因</span>
                                </th>
                                <th>
                                    <span>网络地址</span>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>2018年5月21日 09:12</td>
                                <td>0.1025</td>
                                <td>人工</td>
                                <td>运维001</td>
                                <td>人工维护/系统测试</td>
                                <td>192.168.1.97</td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="table table-striped table-wrap">
                            <thead>
                            <tr>
                                <th>
                                    <span>修正时间</span>
                                </th>
                                <th>
                                    <span>修正值</span>
                                </th>
                                <th>
                                    <span>修正标记</span>
                                </th>
                                <th>
                                    <span>操作员</span>
                                </th>
                                <th>
                                    <span>修正原因</span>
                                </th>
                                <th>
                                    <span>网络地址</span>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>2018年5月21日 09:12</td>
                                <td>0.1025</td>
                                <td>人工</td>
                                <td>运维001</td>
                                <td>人工维护/系统测试</td>
                                <td>192.168.1.97</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="data-quality-box">
                        <h4 class="quality-title">修正内容</h4>
                        <form class="form-inline screenCon">
                            <div class="form-line-wrap lh1">
                                <div class="form-group first-group clearfix">
                                    <label for="" class="fl">用户名称：</label>
                                    <div class="fl ablue">
                                        运维001
                                    </div>
                                </div>
                                <div class="form-group clearfix">
                                    <label for="" class="fl">网络地址：</label>
                                    <div class="fl ablue">
                                        192.168.1.77
                                    </div>
                                </div>
                            </div>
                            <div class="form-line-wrap">
                                <div class="form-group first-group">
                                    <label for="">修正标记：</label>
                                    <select id="correctionMark" class="selectpicker min-select">
                                        <option value="1">流速</option>
                                        <option value="2">水温</option>
                                        <option value="3">溶解氧</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" id="correctionValcb"/>
                                    <label for="correctionValcb" name="cblab" class="text-disable">修正值：</label>
                                    <input id="correctionVal" class="form-control date-input" type="text" disabled/>
                                </div>
                            </div>
                            <div class="form-line-wrap">
                                <div class="form-group clearfix">
                                    <label for="" class="fl">修正原因：</label>
                                    <div class="clearfix fl correction-cause">
                                        <span class="fl">
                                            <input type="checkbox" id="cause1"/>
                                            <label for="cause1" name="cblab">人工服务/系统测试</label>
                                        </span>
                                        <span class="fl">
                                            <input type="checkbox" id="cause2"/>
                                            <label for="cause2" name="cblab">标样核查/加标回收</label>
                                        </span>
                                        <span class="fl">
                                            <input type="checkbox" id="cause3"/>
                                            <label for="cause3" name="cblab">仪器故障</label>
                                        </span>
                                        <span class="fl">
                                            <input type="checkbox" id="cause4"/>
                                            <label for="cause4" name="cblab">数据异常</label>
                                        </span>
                                    </div>
                                </div>

                            </div>
                            <div class="form-line-wrap">
                                <div class="form-group clearfix">
                                    <label for="" class="fl" style="visibility:hidden">其他原因：</label>
                                    <div class="fl other-cause">
                                        <input type="checkbox" id="cause5"/>
                                        <label for="cause5" name="cblab">其他</label>
                                        <input type="text" class="form-control date-input">
                                    </div>
                                </div>
                            </div>
                            <div class="form-line-wrap lh1">
                                <div class="form-group clearfix">
                                    <label for="" class="fl">修正模式：</label>
                                    <div class="clearfix fl correction-type">
                                        <span class="fl">
                                            <input type="radio" id="singleCorrect" name="correct" checked/>
                                            <label for="singleCorrect" name="radio">单个修正</label>
                                        </span>
                                        <span class="fl">
                                            <input type="radio" id="batchCorrect" name="correct"/>
                                            <label for="batchCorrect" name="radio">批量修正</label>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-line-wrap batch-correct-wrap">
                                <div class="batch-correct">
                                    <input type="checkbox" id="singleCorrectcb">
                                    <label for="singleCorrectcb" name="cblab">单行修正 </label>
                                    同时修正该时间点的所有参数
                                </div>
                                <div class="batch-correct">
                                    <input type="checkbox" id="batchCorrectcb">
                                    <label for="batchCorrectcb" name="cblab">时段修正 </label>
                                    修正该时间段的单（多）参数
                                </div>
                                <div class="batch-correct">
                                    <div class="form-group">
                                        <label for="startDate3">开始时间：</label>
                                        <input id="startDate3" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="endDate3">结束时间：</label>
                                        <input id="endDate3" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                    </div>
                                </div>
                            </div>
                            <div class="tac search-btn-wrap">
                                <button type="button" class="search-btn" data-dismiss="modal">返回</button>
                                <button type="button" class="search-btn">确定</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!--录入实验室比对数据-->
                <div class="data-quality-wrap">
                    <div class="data-quality-box">
                        <h4 class="quality-title">原始数据信息</h4>
                        <div class="raw-data-wrap clearfix">
                            <div class="raw-data">
                                <label for="">站点名称：</label>
                                <span class="val">白马河站</span>
                            </div>
                            <div class="raw-data">
                                <label for="">参数名称：</label>
                                <span class="val">溶解氧</span>
                            </div>
                            <div class="raw-data">
                                <label for="">原始标记：</label>
                                <span class="val">无</span>
                            </div>
                            <div class="raw-data">
                                <label for="">监测时间：</label>
                                <span class="val">2018-04-26 12:00:00</span>
                            </div>
                            <div class="raw-data">
                                <label for="">原始数值：</label>
                                <span class="val">4.49</span>
                            </div>
                            <div class="raw-data">
                                <label for="">自动审核标记：</label>
                                <span class="val">无</span>
                            </div>
                            <div class="raw-data">
                                <label for="">实验室比对数据：</label>
                                <span class="val">无</span>
                            </div>
                        </div>
                    </div>
                    <div class="data-quality-box">
                        <h4 class="quality-title">实验室比对数据录入</h4>
                        <form class="form-inline screenCon">
                            <div class="form-line-wrap">
                                <div class="form-group">
                                    <label for="testDate">实验时间：</label>
                                    <input id="testDate" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                </div>
                                <div class="form-group">
                                    <label for="dateVal">数据值：</label>
                                    <input id="dateVal" class="form-control date-input" type="text"/>
                                    <span>mg/L</span>
                                </div>
                            </div>
                            <div class="form-line-wrap">
                                <div class="form-group">
                                    <label for="testDate">数据标识：</label>
                                    <span>实验室质控数据</span>
                                </div>
                            </div>
                            <div class="tac search-btn-wrap">
                                <button type="button" class="search-btn" data-dismiss="modal">返回</button>
                                <button type="button" class="search-btn">录入</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!--参数选择弹窗-->
<div class="modal fade" id="paramsSelect" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog normal-modal">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                参数选择
            </div>
            <div class="modal-body">
                <div class="normal-line-wrap">
                    <h5>仪器选择</h5>
                    <div class="clearfix cb-list-wrap">
                        <span class="fl">
                            <input type="checkbox" id="instrument1"/>
                            <label for="instrument1" name="cblab">流速测试仪</label>
                        </span>
                        <span class="fl">
                            <input type="checkbox" id="instrument2"/>
                            <label for="instrument2" name="cblab">五参数分析仪</label>
                        </span>
                        <span class="fl">
                            <input type="checkbox" id="instrument3"/>
                            <label for="instrument3" name="cblab">溶解氧</label>
                        </span>
                        <span class="fl">
                            <input type="checkbox" id="instrument4"/>
                            <label for="instrument4" name="cblab">氨氮在线分析仪</label>
                        </span>
                        <span class="fl">
                            <input type="checkbox" id="instrument5"/>
                            <label for="instrument5" name="cblab">水位监测仪</label>
                        </span>
                    </div>
                </div>
                <div class="normal-line-wrap">
                    <h5>参数列表</h5>
                    <div class="clearfix cb-list-wrap">
                        <span class="fl">
                            <input type="checkbox" id="params1"/>
                            <label for="params1" name="cblab">水温</label>
                        </span>
                        <span class="fl">
                            <input type="checkbox" id="params2"/>
                            <label for="params2" name="cblab">pH</label>
                        </span>
                        <span class="fl">
                            <input type="checkbox" id="params3"/>
                            <label for="params3" name="cblab">溶解氧</label>
                        </span>
                        <span class="fl">
                            <input type="checkbox" id="params4"/>
                            <label for="params4" name="cblab">电导率</label>
                        </span>
                        <span class="fl">
                            <input type="checkbox" id="params5"/>
                            <label for="params5" name="cblab">浊度</label>
                        </span>
                    </div>
                </div>
                <div class="tac search-btn-wrap">
                    <button type="button" class="search-btn" data-dismiss="modal">返回</button>
                    <button type="button" class="search-btn">确定</button>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>