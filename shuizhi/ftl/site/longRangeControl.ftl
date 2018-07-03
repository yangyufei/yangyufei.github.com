<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <title>远程控制</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/css" href="${basePath}/js/time/skin/WdatePicker.css" />
    <link rel="stylesheet" href="${basePath}/css/bootstrap.css">
    <link rel="stylesheet" href="${basePath}/css/zTreeStyle.css">
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap-select.css" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/site/longRangeControl.less" />
    <script type="text/javascript" src="${basePath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/less.js"></script>
    <script type="text/javascript" src="${basePath}/js/common.js"></script>
    <script src="${basePath}/js/time/WdatePicker.js"></script>
    <script src="${basePath}/js/bootstrap.js"></script>
    <script src="${basePath}/js/jquery.ztree.all-3.5.js"></script>
    <script src="${basePath}/js/jquery.ztree.exhide.js"></script>
    <script src="${basePath}/js/arttemplate.js"></script>
    <script src="${basePath}/js/bootstrap.js"></script>
    <script src="${basePath}/js/bootstrap-select.js"></script>
    <!-- 页面特有js -->
    <script type="text/javascript" src="${basePath}/js/site/longRangeControl.js"></script>
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
                <p><a href="#" class="contentName">白马河站</a>&nbsp;/&nbsp;<var class="navName">远程控制</var></p>
            </div>
            <div class="dataAndLongRange clearfix">
                <span class="selected">数据采集</span>
                <span>远程控制</span>
            </div>
            <div class="dataAndLongRangeCon">
                <!-- 数据采集 -->
                <div class="dataAcquisition selected">
                    <div class="screen">
                        <h2><var>筛选</var></h2>
                        <div class="screenCon">
                            <ul>
                                <li class="clearfix">
                                    <div>
                                        <input type="radio" id="accordingToTime" name="checkOne" checked>
                                        <label for="accordingToTime" name="checkOne">按时间段采集</label>
                                    </div>
                                    <div>
                                        <label for="selectTime">选择时段：</label>
                                        <select name="" id="selectTime">
                                            <option value="">最近一天</option>
                                            <option value="">最近一周</option>
                                            <option value="">最近一月</option>
                                        </select>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <div>
                                        <input type="radio" id="customTime" name="checkOne">
                                        <label for="customTime" name="checkOne">自定义时段</label>
                                    </div>
                                    <div>
                                        <label for="startTime" class="noChecked">开始时间：</label>
                                        <input readonly="readonly" type="text" class="Wdate" id="startTime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" disabled="true"/>
                                    </div>
                                    <div>
                                        <label for="endTime" class="noChecked">结束时间：</label>
                                        <input readonly="readonly" type="text" class="Wdate" id="endTime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" disabled="true"/>
                                    </div>
                                </li>
                            </ul>
                            <div class="selectType clearfix">
                                <label id="selectTypeName">选择采集类型：</label>
                                <!--忙碌或者空闲的情况下按钮为蓝色可点击，离线的话按钮为灰色（ol添加类名noSelected）-->
                                <ol>
                                    <li>实时数据采集</li>
                                    <li>分钟数据采集</li>
                                    <li>小时数据采集</li>
                                    <li>日数据采集</li>
                                    <li>采集质控数据</li>
                                    <li>现场端运行日志采集</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="instrumentLog">
                        <h2><var>仪器反馈日志</var></h2>
                        <div class="instrumentLogCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>反馈时间</th>
                                    <th>反馈内容</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>2018年5月19日 16:30:05</td>
                                    <td>收到“总磷”远程「标样核查」指令</td>
                                </tr>
                                <tr>
                                    <td>2018年5月19日 16:30:05</td>
                                    <td>收到“总磷”远程「标样核查」指令</td>
                                </tr>
                                <tr>
                                    <td>2018年5月19日 16:30:05</td>
                                    <td>收到“总磷”远程「标样核查」指令</td>
                                </tr>
                                <tr>
                                    <td>2018年5月19日 16:30:05</td>
                                    <td>收到“总磷”远程「标样核查」指令</td>
                                </tr>
                                </tbody>
                            </table>
                            <ul class="pager">
                                <li><a href="#">首页</a></li>
                                <li><a href="#">上一页</a></li>
                                <li>1/12</li>
                                <li>&nbsp;&nbsp;共12项</li>
                                <li><a href="#">下一页</a></li>
                                <li><a href="#">末页</a></li>
                                <li>
                                    <input id="pageID" name="pageID" type="text" value="">
                                    <a href="#" style="padding:3px 7px;">跳转</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 远程控制 -->
                <div class="longRangeControl">
                    <div class="longRangeSelect">
                        <h2><var>筛选</var></h2>
                        <div class="controlOrder">
                            <div class="quelifyControl clearfix">
                                <label for="">质量控制指令</label>
                                <select name="" id="">
                                    <option value="">总磷</option>
                                </select>
                                <div>
                                    <label>体积：</label>
                                    <div class="volume">
                                            <span>
                                                <select id="volumeValue" onchange="volumeChange()">
                                                    <option value="">0.2</option>
                                                    <option value="">0.4</option>
                                                    <option value="">0.6</option>
                                                </select>ml
                                            </span>
                                        <input type="text" id="volumeInput" value="0.2">
                                    </div>
                                </div>
                                <!--如果接收不到远程请求，则给controlOrderButton添加一个类名unableToReceive-->
                                <div class="controlOrderButton">
                                    <span>加标回收</span>
                                    <var></var>
                                    <span>远程标样核查</span>
                                </div>
                            </div>
                            <div class="timeOrder clearfix">
                                <label for="">提取时间指令</label>
                                <!--离线状态以下div添加类名offline-->
                                <div class="">
                                    <span>提取现场时间</span>
                                    <span>提取实时数据间隔</span>
                                    <span>设置现场机时间</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="longRangeLog">
                        <h2><var>仪器反馈日志</var></h2>
                        <div class="longRangeLogCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>反馈时间</th>
                                    <th>反馈内容</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>2018年5月19日 16:30:05</td>
                                    <td>收到“总磷”远程「标样核查」指令</td>
                                </tr>
                                <tr>
                                    <td>2018年5月19日 16:30:05</td>
                                    <td>收到“总磷”远程「标样核查」指令</td>
                                </tr>
                                <tr>
                                    <td>2018年5月19日 16:30:05</td>
                                    <td>收到“总磷”远程「标样核查」指令</td>
                                </tr>
                                </tbody>
                            </table>
                            <ul class="pager">
                                <li><a href="#">首页</a></li>
                                <li><a href="#">上一页</a></li>
                                <li>1/12</li>
                                <li>&nbsp;&nbsp;共12项</li>
                                <li><a href="#">下一页</a></li>
                                <li><a href="#">末页</a></li>
                                <li>
                                    <input id="pageID" name="pageID" type="text" value="">
                                    <a href="#" style="padding:3px 7px;">跳转</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="treeSearchContain">
    <div class="treeSearch">
        <h3><var>搜索</var></h3>
        <div class="treeSearchCon">
            <div class="inputValue">
                <input type="text" id="key" placeholder="请输入关键字"/>
                <button onclick="callNumber()" class="determine">确定</button>
            </div>
            <div class="inputValue2">
                <input type="text" id="key2" placeholder="请输入关键字"/>
                <button onclick="callNumber2()" class="determine">确定</button>
            </div>
            <div class="treecon">
                <div class="treeOne show">
                    <span>行政树</span>
                    <div id="organIds" class="ztree ztree_matrix"></div>
                </div>
                <div class="treeTwo">
                    <span>流域树</span>
                    <div id="organIds2" class="ztree ztree_matrix"></div>
                </div>
            </div>
            <div class="showOrNotButton" onclick="showOrNot()"></div>
        </div>
    </div>
</div>
</body>
</html>