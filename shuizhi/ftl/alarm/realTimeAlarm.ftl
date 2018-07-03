<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>实时告警信息查看</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap-select.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/ui-dialog.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/js/time/skin/WdatePicker.css" />
    <link rel="stylesheet" href="${basePath}/css/zTreeStyle.css">
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/alarm/realTimeAlarm.less" />
    <script type="text/javascript" src="${basePath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/less.js"></script>
    <script type="text/javascript" src="${basePath}/js/common.js"></script>
    <script src="${basePath}/js/bootstrap.js"></script>
    <script src="${basePath}/js/bootstrap-select.js"></script>
    <script src="${basePath}/js/arttemplate.js"></script>
    <script type="text/javascript" src="${basePath}/js/dialog.js"></script>
    <script src="${basePath}/js/time/WdatePicker.js"></script>
    <script src="${basePath}/js/jquery.ztree.all-3.5.js"></script>
    <script src="${basePath}/js/jquery.ztree.exhide.js"></script>
    <!--页面特有js-->
    <script type="text/javascript" src="${basePath}/js/alarm/realTimeAlarm.js"></script>
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
                <p><a href="#" class="contentName">白马河站</a>&nbsp;/&nbsp;<var class="navName">实时告警信息查看</var></p>
            </div>
            <div class="alarmTab">
                <span class="selected">实时告警</span>
                <span>历史告警</span>
                <span>告警通知配置</span>
            </div>
            <div class="alarmCon">
                <!--实时告警-->
                <div class="realAlarm selected">
                    <div class="realAlarmSelect">
                        <h2><var>筛选</var></h2>
                        <div class="realAlarmSelectCon">
                            <div class="clearfix">
                                <div>
                                    <label for="alarmType">告警类型：</label>
                                    <p>
                                        <select name="" id="alarmType" class="selectpicker show-tick form-control" data-hide-disabled="true" data-live-search="true">
                                            <optgroup>
                                                <option value="">所有类型</option>
                                            </optgroup>
                                            <optgroup>
                                                <option value="">超标告警</option>
                                                <option value="">故障告警</option>
                                                <option value="">网络告警</option>
                                                <option value="">联动告警</option>
                                                <option value="">浓缩小于特定值告警</option>
                                                <option value="">数据持续过低告警</option>
                                                <option value="">数据异常告警</option>
                                                <option value="">数据波动告警</option>
                                                <option value="">机组停运</option>
                                            </optgroup>
                                        </select>
                                    </p>
                                </div>
                                <div class="outStandardLevel">
                                    <label for="outStandardLevel">超标程度：</label>
                                    <p>
                                        <select name="" id="outStandardLevel" class="selectpicker show-tick form-control" data-hide-disabled="true" data-live-search="true">
                                            <optgroup>
                                                <option value="">所有类型</option>
                                            </optgroup>
                                            <optgroup>
                                                <option value="">一般超标</option>
                                                <option value="">严重超标</option>
                                                <option value="">可能发生污染事故</option>
                                            </optgroup>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <div class="clearfix">
                                <label for="">参数选择：</label>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="para-1" name="checkboxSelect">
                                        <label for="para-1" name="checkboxSelect">流速</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para-2" name="checkboxSelect">
                                        <label for="para-2" name="checkboxSelect">水温</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para-3" name="checkboxSelect">
                                        <label for="para-3" name="checkboxSelect">氨氮</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para-4" name="checkboxSelect">
                                        <label for="para-4" name="checkboxSelect">溶解氧</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para-5" name="checkboxSelect">
                                        <label for="para-5" name="checkboxSelect">水位</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para-6" name="checkboxSelect">
                                        <label for="para-6" name="checkboxSelect">总磷</label>
                                    </li>
                                </ul>
                            </div>
                            <div class="clearfix">
                                <a href="#" class="alarmSearch">查询</a>
                            </div>
                        </div>
                    </div>
                    <div class="realAlarmList">
                        <h2><var>实时告警信息</var></h2>
                        <div class="realAlarmListCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>超标程度</th>
                                    <th>告警描述</th>
                                    <th>告警时间</th>
                                    <th>历时</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>
                                        <var class="commonly" style="color: #333;">一般超标</var>
                                        <!--<var class="serious" style="color: #ff9914;">严重超标</var>-->
                                        <!--<var class="maybe" style="color: #ff1b2b;">可能发生污染事故</var>-->
                                    </td>
                                    <td>
                                        <var>实时数据超标告警</var>
                                        <a href="#">氨氮，查看详情</a>
                                    </td>
                                    <td>2018-05-15  19:19:14</td>
                                    <td>3天4小时40分钟</td>
                                    <td><a href="#">消警</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>
                                        <!--<var class="commonly" style="color: #333;">一般超标</var>-->
                                        <var class="serious" style="color: #ff9914;">严重超标</var>
                                        <!--<var class="maybe" style="color: #ff1b2b;">可能发生污染事故</var>-->
                                    </td>
                                    <td>
                                        <var>实时数据超标告警</var>
                                        <a href="#">氨氮，查看详情</a>
                                    </td>
                                    <td>2018-05-15  19:19:14</td>
                                    <td>3天4小时40分钟</td>
                                    <td><a href="#">消警</a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>
                                        <!--<var class="commonly" style="color: #333;">一般超标</var>-->
                                        <!--<var class="serious" style="color: #ff9914;">严重超标</var>-->
                                        <var class="maybe" style="color: #ff1b2b;">可能发生污染事故</var>
                                    </td>
                                    <td>
                                        <var>实时数据超标告警</var>
                                        <a href="#">氨氮，查看详情</a>
                                    </td>
                                    <td>2018-05-15  19:19:14</td>
                                    <td>3天4小时40分钟</td>
                                    <td><a href="#">消警</a></td>
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
                <!--历史告警-->
                <div class="historyAlarm">
                    <div class="historyAlarmSelect">
                        <h2><var>筛选</var></h2>
                        <div class="historyAlarmSelectCon">
                            <div class="clearfix">
                                <div>
                                    <label for="startTime">开始时间：</label>
                                    <input readonly="readonly" type="text" class="Wdate" id="startTime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
                                </div>
                                <div>
                                    <label for="endTime">结束时间：</label>
                                    <input readonly="readonly" type="text" class="Wdate" id="endTime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
                                </div>
                                <!--<div>-->
                                <!--<label for="parameter">参数：</label>-->
                                <!--<p>-->
                                <!--<select name="" id="parameter" multiple class="selectpicker show-tick form-control" data-hide-disabled="true" data-live-search="true">-->
                                <!--<optgroup>-->
                                <!--<option value="">所有参数</option>-->
                                <!--</optgroup>-->
                                <!--<optgroup>-->
                                <!--<option value="">流速</option>-->
                                <!--<option value="">水温</option>-->
                                <!--<option value="">溶解氧</option>-->
                                <!--<option value="">氨氮</option>-->
                                <!--<option value="">水位</option>-->
                                <!--<option value="">总磷</option>-->
                                <!--</optgroup>-->
                                <!--</select>-->
                                <!--</p>-->
                                <!--</div>-->
                            </div>
                            <div class="clearfix">
                                <div>
                                    <label for="historyAlarmType">告警类型：</label>
                                    <p>
                                        <select name="" id="historyAlarmType" class="selectpicker show-tick form-control" data-hide-disabled="true" data-live-search="true">
                                            <optgroup>
                                                <option value="">所有类型</option>
                                            </optgroup>
                                            <optgroup>
                                                <option value="">超标告警</option>
                                                <option value="">故障告警</option>
                                                <option value="">网络告警</option>
                                                <option value="">联动告警</option>
                                                <option value="">浓缩小于特定值告警</option>
                                                <option value="">数据持续过低告警</option>
                                                <option value="">数据异常告警</option>
                                                <option value="">数据波动告警</option>
                                                <option value="">机组停运</option>
                                            </optgroup>
                                        </select>
                                    </p>
                                </div>
                                <div class="alarmLevel">
                                    <label for="alarmLevel">超标程度：</label>
                                    <p>
                                        <select name="" id="alarmLevel" class="selectpicker show-tick form-control" data-hide-disabled="true" data-live-search="true">
                                            <optgroup>
                                                <option value="">所有类型</option>
                                            </optgroup>
                                            <optgroup>
                                                <option value="">一般超标</option>
                                                <option value="">严重超标</option>
                                                <option value="">可能发生污染事故</option>
                                            </optgroup>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <div class="clearfix">
                                <label for="">参数选择：</label>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="para2-1" name="checkboxSelect">
                                        <label for="para2-1" name="checkboxSelect">流速</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para2-2" name="checkboxSelect">
                                        <label for="para2-2" name="checkboxSelect">水温</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para2-3" name="checkboxSelect">
                                        <label for="para2-3" name="checkboxSelect">氨氮</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para2-4" name="checkboxSelect">
                                        <label for="para2-4" name="checkboxSelect">溶解氧</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para2-5" name="checkboxSelect">
                                        <label for="para2-5" name="checkboxSelect">水位</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="para2-6" name="checkboxSelect">
                                        <label for="para2-6" name="checkboxSelect">总磷</label>
                                    </li>
                                </ul>
                            </div>
                            <div class="clearfix">
                                <a href="#" class="historySearch">查询</a>
                            </div>
                        </div>
                    </div>
                    <div class="historyAlarmList">
                        <h2 class="clearfix">
                            <var>历史告警信息</var>
                            <div class="outDataDiv">
                                <a href="#" class="outData"><span></span>导出数据</a>
                            </div>
                        </h2>
                        <div class="historyAlarmListCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>超标程度</th>
                                    <th>告警描述</th>
                                    <th>告警时间</th>
                                    <th>消警时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>
                                        <var class="commonly" style="color: #333;">一般超标</var>
                                        <!--<var class="serious" style="color: #ff9914;">严重超标</var>-->
                                        <!--<var class="maybe" style="color: #ff1b2b;">可能发生污染事故</var>-->
                                    </td>
                                    <td>
                                        <var>实时数据超标告警</var>
                                        <a href="#">氨氮，查看详情</a>
                                    </td>
                                    <td>2018-05-15  19:19:14</td>
                                    <td>2018-05-15  19:19:14</td>
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
                <!--告警通知配置-->
                <div class="messageAlarm">
                    <div class="messageAlarmSelect">
                        <h2><var>筛选</var></h2>
                        <div class="messageAlarmSelectCon clearfix">
                            <div>
                                <label for="keyword">关键词：</label>
                                <input type="text" id="keyword">
                                <a href="#" class="messageSearch">查询</a>
                            </div>
                        </div>
                    </div>
                    <div class="messageAlarmList">
                        <h2>
                            <var>告警通知配置</var>
                            <a href="#" class="messageAdd">新增通知规则</a>
                        </h2>
                        <div class="messageAlarmListCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>
                                        <input type="checkbox" id="messageAll" name="checkboxSelect">
                                        <label for="messageAll" name="checkboxSelect"></label>
                                    </th>
                                    <th>通知规则名称</th>
                                    <th>告警类型</th>
                                    <th>通知类型</th>
                                    <th>通知人员</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody class="tbodyCon">
                                <tr id="1">
                                    <td>1</td>
                                    <td>
                                        <input type="checkbox" id="messageOther-1" name="checkboxSelect">
                                        <label for="messageOther-1" name="checkboxSelect"></label>
                                    </td>
                                    <td>设备故障</td>
                                    <td>故障告警</td>
                                    <td>app推送、邮件</td>
                                    <td>周晓伦</td>
                                    <td>
                                        <span class="message-detail">详情</span>
                                        <span class="message-delete">删除</span>
                                    </td>
                                </tr>
                                <tr id="2">
                                    <td>2</td>
                                    <td>
                                        <input type="checkbox" id="messageOther-2" name="checkboxSelect">
                                        <label for="messageOther-2" name="checkboxSelect"></label>
                                    </td>
                                    <td>设备故障</td>
                                    <td>故障告警</td>
                                    <td>app推送、邮件</td>
                                    <td>周晓伦</td>
                                    <td>
                                        <span class="message-detail">详情</span>
                                        <span class="message-delete">删除</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>
                                        <input type="checkbox" id="messageOther-3" name="checkboxSelect">
                                        <label for="messageOther-3" name="checkboxSelect"></label>
                                    </td>
                                    <td>设备故障</td>
                                    <td>故障告警</td>
                                    <td>app推送、邮件</td>
                                    <td>周晓伦</td>
                                    <td>
                                        <span class="message-detail">详情</span>
                                        <span class="message-delete">删除</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <div>
                                <a href="#" class="message-deleteBatch">批量删除</a>
                            </div>
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
<!--编辑规则-->
<script type="text/html" id="editRule">
    <div class="editRule">
        <div style="padding: 16px 0;">
            <label for="messageName">通知规则名称：</label>
            <input type="text" id="messageName">
        </div>
        <div>
            <h3>告警类型</h3>
            <ul class="clearfix">
                <li>
                    <input type="checkbox" id="checkData-1" name="checkboxSelect">
                    <label for="checkData-1" name="checkboxSelect">一般超标</label>
                </li>
                <li>
                    <input type="checkbox" id="checkData-2" name="checkboxSelect">
                    <label for="checkData-2" name="checkboxSelect">严重超标</label>
                </li>
                <li>
                    <input type="checkbox" id="checkData-3" name="checkboxSelect">
                    <label for="checkData-3" name="checkboxSelect">可能事故超标</label>
                </li>
                <li>
                    <input type="checkbox" id="checkData-4" name="checkboxSelect">
                    <label for="checkData-4" name="checkboxSelect">机组停运</label>
                </li>
                <li>
                    <input type="checkbox" id="checkData-5" name="checkboxSelect">
                    <label for="checkData-5" name="checkboxSelect">浓度小于特定值告警</label>
                </li>
                <li>
                    <input type="checkbox" id="checkData-6" name="checkboxSelect">
                    <label for="checkData-6" name="checkboxSelect">数据持续过低告警</label>
                </li>
                <li>
                    <input type="checkbox" id="checkData-7" name="checkboxSelect">
                    <label for="checkData-7" name="checkboxSelect">故障告警</label>
                </li>
                <li>
                    <input type="checkbox" id="checkData-8" name="checkboxSelect">
                    <label for="checkData-8" name="checkboxSelect">数据倒挂</label>
                </li>
                <li>
                    <input type="checkbox" id="checkData-9" name="checkboxSelect">
                    <label for="checkData-9" name="checkboxSelect">数据波动告警</label>
                </li>
                <li>
                    <input type="checkbox" id="checkData-10" name="checkboxSelect">
                    <label for="checkData-10" name="checkboxSelect">数据异常告警</label>
                </li>
            </ul>
        </div>
        <div>
            <h3>通知类型</h3>
            <ul class="clearfix">
                <li>
                    <input type="checkbox" id="messageType-1" name="checkboxSelect">
                    <label for="messageType-1" name="checkboxSelect">短信推送</label>
                </li>
                <li>
                    <input type="checkbox" id="messageType-2" name="checkboxSelect">
                    <label for="messageType-2" name="checkboxSelect">APP推送</label>
                </li>
                <li>
                    <input type="checkbox" id="messageType-3" name="checkboxSelect">
                    <label for="messageType-3" name="checkboxSelect">邮件推送</label>
                </li>
            </ul>
        </div>
        <div style="padding: 16px 0;">
            <h3>告警文本</h3>
            <div>
                <p>【<var>站点名称</var>】</p>
                <p>【<var>参数名称</var>】</p>
                <p>【<var>告警类型</var>】</p>
                <p>【<var>具体数值</var>】</p>
                <input type="text" value="请及时关注处理">
            </div>
        </div>
        <div class="peopleList">
            <h3 class="messagePeople clearfix">
                <var>通知人员</var>
                <a href="#" class="selectFromOrg" onclick="treeSelect()">从组织机构中选择</a>
                <a href="#" class="addPeople" onclick="addPeople()">添加人员</a>
            </h3>
            <ol>
                <li>
                    <div>
                        <label for="telPeople-1">通知人员：</label>
                        <input type="text" id="telPeople-1" value="周杰伦">
                        <span onclick="delLi(this)"></span>
                    </div>
                    <div>
                        <label for="telPhone-1">手机号码：</label>
                        <input type="text" id="telPhone-1" value="123">
                    </div>
                    <div>
                        <label for="email-1">电子邮箱：</label>
                        <input type="text" id="email-1" value="111@qq.com">
                    </div>
                </li>
                <li>
                    <div>
                        <label for="telPeople-2">通知人员：</label>
                        <input type="text" id="telPeople-2" value="admin">
                        <span onclick="delLi(this)"></span>
                    </div>
                    <div>
                        <label for="telPhone-2">手机号码：</label>
                        <input type="text" id="telPhone-2" value="12">
                    </div>
                    <div>
                        <label for="email-2">电子邮箱：</label>
                        <input type="text" id="email-2" value="23">
                    </div>
                </li>
            </ol>
        </div>
    </div>
</script>
<!--新增规则-->
<script type="text/html" id="addRule">
    <div class="addRule">
        <div style="padding: 16px 0;">
            <label for="addmessageName">通知规则名称：</label>
            <input type="text" id="addmessageName">
        </div>
        <div>
            <h3>告警类型</h3>
            <ul class="clearfix">
                <li>
                    <input type="checkbox" id="addcheckData-1" name="checkboxSelect">
                    <label for="addcheckData-1" name="checkboxSelect">一般超标</label>
                </li>
                <li>
                    <input type="checkbox" id="addcheckData-2" name="checkboxSelect">
                    <label for="addcheckData-2" name="checkboxSelect">严重超标</label>
                </li>
                <li>
                    <input type="checkbox" id="addcheckData-3" name="checkboxSelect">
                    <label for="addcheckData-3" name="checkboxSelect">可能事故超标</label>
                </li>
                <li>
                    <input type="checkbox" id="addcheckData-4" name="checkboxSelect">
                    <label for="addcheckData-4" name="checkboxSelect">机组停运</label>
                </li>
                <li>
                    <input type="checkbox" id="addcheckData-5" name="checkboxSelect">
                    <label for="addcheckData-5" name="checkboxSelect">浓度小于特定值告警</label>
                </li>
                <li>
                    <input type="checkbox" id="addcheckData-6" name="checkboxSelect">
                    <label for="addcheckData-6" name="checkboxSelect">数据持续过低告警</label>
                </li>
                <li>
                    <input type="checkbox" id="addcheckData-7" name="checkboxSelect">
                    <label for="addcheckData-7" name="checkboxSelect">故障告警</label>
                </li>
                <li>
                    <input type="checkbox" id="addcheckData-8" name="checkboxSelect">
                    <label for="addcheckData-8" name="checkboxSelect">数据倒挂</label>
                </li>
                <li>
                    <input type="checkbox" id="addcheckData-9" name="checkboxSelect">
                    <label for="addcheckData-9" name="checkboxSelect">数据波动告警</label>
                </li>
                <li>
                    <input type="checkbox" id="addcheckData-10" name="checkboxSelect">
                    <label for="addcheckData-10" name="checkboxSelect">数据异常告警</label>
                </li>
            </ul>
        </div>
        <div>
            <h3>通知类型</h3>
            <ul class="clearfix">
                <li>
                    <input type="checkbox" id="addmessageType-1" name="checkboxSelect">
                    <label for="addmessageType-1" name="checkboxSelect">短信推送</label>
                </li>
                <li>
                    <input type="checkbox" id="addmessageType-2" name="checkboxSelect">
                    <label for="addmessageType-2" name="checkboxSelect">APP推送</label>
                </li>
                <li>
                    <input type="checkbox" id="addmessageType-3" name="checkboxSelect">
                    <label for="addmessageType-3" name="checkboxSelect">邮件推送</label>
                </li>
            </ul>
        </div>
        <div style="padding: 16px 0;">
            <h3>告警文本</h3>
            <div>
                <p>【<var>站点名称</var>】</p>
                <p>【<var>参数名称</var>】</p>
                <p>【<var>告警类型</var>】</p>
                <p>【<var>具体数值</var>】</p>
                <input type="text" value="请及时关注处理">
            </div>
        </div>
        <div class="peopleList">
            <h3 class="messagePeople clearfix">
                <var>通知人员</var>
                <a href="#" class="addselectFromOrg" onclick="treeSelect()">从组织机构中选择</a>
                <a href="#" class="addaddPeople" onclick="addPeople()">添加人员</a>
            </h3>
            <ol>
                <li>
                    <div>
                        <label for="addtelPeople-1">通知人员：</label>
                        <input type="text" id="addtelPeople-1" value="周杰伦">
                        <span onclick="delLi(this)"></span>
                    </div>
                    <div>
                        <label for="addtelPhone-1">手机号码：</label>
                        <input type="text" id="addtelPhone-1" value="123">
                    </div>
                    <div>
                        <label for="addemail-1">电子邮箱：</label>
                        <input type="text" id="addemail-1" value="111@qq.com">
                    </div>
                </li>
                <li>
                    <div>
                        <label for="addtelPeople-2">通知人员：</label>
                        <input type="text" id="addtelPeople-2" value="admin">
                        <span onclick="delLi(this)"></span>
                    </div>
                    <div>
                        <label for="addtelPhone-2">手机号码：</label>
                        <input type="text" id="addtelPhone-2" value="12">
                    </div>
                    <div>
                        <label for="addemail-2">电子邮箱：</label>
                        <input type="text" id="addemail-2" value="23">
                    </div>
                </li>
            </ol>
        </div>
    </div>
</script>
<script type="text/html" id="treeSelect">
    <div id="tree" class="ztree ztree_matrix"></div>
</script>
</body>
</html>