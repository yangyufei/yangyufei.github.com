<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>运行设置</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/css" href="${basePath}/js/time/skin/WdatePicker.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/ui-dialog.css" />
    <link rel="stylesheet" href="${basePath}/css/bootstrap.css">
    <link rel="stylesheet" href="${basePath}/css/zTreeStyle.css">
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/site/runset.less" />
    <script type="text/javascript" src="${basePath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/less.js"></script>
    <script  src="${basePath}/js/common.js"></script>
    <script src="${basePath}/js/time/WdatePicker.js"></script>
    <script type="text/javascript" src="${basePath}/js/dialog.js"></script>
    <script src="${basePath}/js/bootstrap.js"></script>
    <script src="${basePath}/js/arttemplate.js"></script>
    <script src="${basePath}/js/jquery.ztree.all-3.5.js"></script>
    <script src="${basePath}/js/jquery.ztree.exhide.js"></script>
    <!-- 页面特有js -->
    <script type="text/javascript" src="${basePath}/js/site/runset.js"></script>
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
                <p><a href="#" class="contentName">白马河站</a>&nbsp;/&nbsp;<var class="navName">运行设置</var></p>
            </div>
            <div class="runsetTab clearfix">
                <span class="selected">常规监测模式设置</span>
                <span>数据异常运行设置</span>
                <span>参数超标设置</span>
                <span>应急模式运行设置</span>
            </div>
            <div class="runsetTabCon">
                <!--常规监测模式设置-->
                <div class="routineSet-wrap selected">
                    <div class="routineSet">
                        <h2>
                            <var>常规监测模式设置&质控运行设置</var>
                            <span>2018-05-01 15:00</span>
                        </h2>
                        <div class="routineSetCon clearfix">
                            <form action="" class="clearfix">
                                <div>
                                    <label for="testCycle">测试周期：</label>
                                    <input type="text" id="testCycle" value="120">分钟
                                </div>
                                <div>
                                    <label for="nextStartUpTime">下次启动时间：</label>
                                    <input readonly="readonly" type="text" class="Wdate" id="nextStartUpTime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"/>
                                </div>
                                <a href="#" class="determine">确定</a>
                            </form>
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>参数</th>
                                    <th>操作</th>
                                    <th>常规质控模式</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td class="parameter">CONMo</td>
                                    <td>
                                        <ul>
                                            <li>
                                                <input type="checkbox" id="parallelSample-1" name="checkboxSelect" checked>
                                                <label for="parallelSample-1" name="checkboxSelect">平行样</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="sampleCheck-1" name="checkboxSelect">
                                                <label for="sampleCheck-1" name="checkboxSelect">标样核查</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="recovery-1" name="checkboxSelect">
                                                <label for="recovery-1" name="checkboxSelect">加标回收</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="blankTest-1" name="checkboxSelect">
                                                <label for="blankTest-1" name="checkboxSelect">空白测试</label>
                                            </li>
                                        </ul>
                                    </td>
                                    <td class="set">设置</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="parameter">水温</td>
                                    <td>
                                        <ul class="clearfix">
                                            <li>
                                                <input type="checkbox" id="parallelSample-2" name="checkboxSelect" checked>
                                                <label for="parallelSample-2" name="checkboxSelect">平行样</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="sampleCheck-2" name="checkboxSelect">
                                                <label for="sampleCheck-2" name="checkboxSelect">标样核查</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="recovery-2" name="checkboxSelect">
                                                <label for="recovery-2" name="checkboxSelect">加标回收</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="blankTest-2" name="checkboxSelect">
                                                <label for="blankTest-2" name="checkboxSelect">空白测试</label>
                                            </li>
                                        </ul>
                                    </td>
                                    <td class="set">设置</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td class="parameter">总磷</td>
                                    <td>
                                        <ul class="clearfix">
                                            <li>
                                                <input type="checkbox" id="parallelSample-3" name="checkboxSelect" checked>
                                                <label for="parallelSample-3" name="checkboxSelect">平行样</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="sampleCheck-3" name="checkboxSelect">
                                                <label for="sampleCheck-3" name="checkboxSelect">标样核查</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="recovery-3" name="checkboxSelect">
                                                <label for="recovery-3" name="checkboxSelect">加标回收</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="blankTest-3" name="checkboxSelect">
                                                <label for="blankTest-3" name="checkboxSelect">空白测试</label>
                                            </li>
                                        </ul>
                                    </td>
                                    <td class="set">设置</td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="synchronizationTo">
                                <h3>同步到其它站点</h3>
                                <div class="select">
                                    <div>
                                        <input type="checkbox" id="all" name="checkboxSelect">
                                        <label for="all" name="checkboxSelect">全选</label>
                                    </div>
                                    <ul class=""clearfix>
                                        <li>
                                            <input type="checkbox" id="other-1" name="checkboxSelect">
                                            <label for="other-1" name="checkboxSelect">白马河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="other-2" name="checkboxSelect">
                                            <label for="other-2" name="checkboxSelect">省电大站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="other-3" name="checkboxSelect">
                                            <label for="other-3" name="checkboxSelect">五四河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="other-4" name="checkboxSelect">
                                            <label for="other-4" name="checkboxSelect">瀛洲河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="other-5" name="checkboxSelect">
                                            <label for="other-5" name="checkboxSelect">凤坂河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="other-6" name="checkboxSelect">
                                            <label for="other-6" name="checkboxSelect">彬德闸排涝站</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="synchronousSetting">
                        <a href="#">同步质控运行设置</a>
                    </div>
                </div>
                <!--数据异常运行设置-->
                <div class="dataAbnormal-wrap">
                    <div class="dataAbnormal">
                        <h2>
                            <var>数据异常运行设置</var>
                            <span>2018-05-01 15:00</span>
                        </h2>
                        <div class="dataAbnormalCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>
                                        <input type="checkbox" id="tableAll" name="checkboxSelect">
                                        <label for="tableAll" name="checkboxSelect"></label>
                                    </th>
                                    <th>参数</th>
                                    <th>操作</th>
                                    <th>确认异常后运行</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>
                                        <!--为了区别每个label对应的input：每个input的id名字不能相同，label的for不能相同-->
                                        <input type="checkbox" id="parameter-1" name="checkboxSelect">
                                        <label for="parameter-1" name="checkboxSelect"></label>
                                    </td>
                                    <td class="abnormal-parameter">CONMn</td>
                                    <td>
                                        <select name="" id="">
                                            <option value="" type="nochange">前一个正常数据</option>
                                            <option value="" type="nochange">前一个月均值</option>
                                            <option value="" type="canchange">历史经验值</option>
                                        </select>
                                        <input type="text" class="dataValue" value="0" disabled>
                                        <input type="text" class="person" value="80">%
                                    </td>
                                    <td class="dataAbnormal-set">设置</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>
                                        <input type="checkbox" id="parameter-2" name="checkboxSelect">
                                        <label for="parameter-2" name="checkboxSelect"></label>
                                    </td>
                                    <td class="abnormal-parameter">氨氮</td>
                                    <td>
                                        <select name="" id="">
                                            <option value="" type="nochange">前一个正常数据</option>
                                            <option value="" type="nochange">前一个月均值</option>
                                            <option value="" type="canchange">历史经验值</option>
                                        </select>
                                        <input type="text" class="dataValue" value="0" disabled>
                                        <input type="text" class="person" value="80">%
                                    </td>
                                    <td class="dataAbnormal-set">设置</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>
                                        <input type="checkbox" id="parameter-3" name="checkboxSelect">
                                        <label for="parameter-3" name="checkboxSelect"></label>
                                    </td>
                                    <td class="abnormal-parameter">氨氮</td>
                                    <td>
                                        <select name="" id="">
                                            <option value="" type="nochange">前一个正常数据</option>
                                            <option value="" type="nochange">前一个月均值</option>
                                            <option value="" type="canchange">历史经验值</option>
                                        </select>
                                        <input type="text" class="dataValue" value="0" disabled>
                                        <input type="text" class="person" value="80">%
                                    </td>
                                    <td class="dataAbnormal-set">设置</td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="abnormalAynchronizationTo">
                                <h3>同步到其它站点</h3>
                                <div class="abnormalselect clearfix">
                                    <div>
                                        <input type="checkbox" id="abnormalall" name="checkboxSelect">
                                        <label for="abnormalall" name="checkboxSelect">全选</label>
                                    </div>
                                    <ul class=""clearfix>
                                        <li>
                                            <input type="checkbox" id="abnormalother-1" name="checkboxSelect">
                                            <label for="abnormalother-1" name="checkboxSelect">白马河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="abnormalother-2" name="checkboxSelect">
                                            <label for="abnormalother-2" name="checkboxSelect">省电大站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="abnormalother-3" name="checkboxSelect">
                                            <label for="abnormalother-3" name="checkboxSelect">五四河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="abnormalother-4" name="checkboxSelect">
                                            <label for="abnormalother-4" name="checkboxSelect">瀛洲河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="abnormalother-5" name="checkboxSelect">
                                            <label for="abnormalother-5" name="checkboxSelect">凤坂河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="abnormalother-6" name="checkboxSelect">
                                            <label for="abnormalother-6" name="checkboxSelect">彬德闸排涝站</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="synchronousSetting">
                        <a href="#">同步质控运行设置</a>
                    </div>
                </div>
                <!--参数超标设置-->
                <div class="parameterExceedStandard-wrap">
                    <div class="parameterExceedStandard">
                        <h2 class="clearfix">
                            <var>数据异常运行设置</var>
                            <span>2018-05-01 15:00</span>
                            <a href="#" class="parameterChange">告警参数与阈值变更</a>
                        </h2>
                        <div class="parameterExceedStandardCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>参数名称</th>
                                    <th>一般超标告警</th>
                                    <th>严重超标告警</th>
                                    <th>可能发生污染事故告警</th>
                                    <th>消警设置</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>氨氮</td>
                                    <td>监测值小于0.6，大于0.4时</td>
                                    <td>监测值大于等于0.6时</td>
                                    <td>监测值大于等于1.2时</td>
                                    <td>连续<select name="" id="">
                                        <option value="">1</option>
                                        <option value="">2</option>
                                        <option value="">3</option>
                                        <option value="">4</option>
                                        <option value="">5</option>
                                        <option value="">6</option>
                                        <option value="">7</option>
                                        <option value="">8</option>
                                        <option value="">9</option>
                                        <option value="">10</option>
                                    </select>次正常值后，自动消警</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>总磷</td>
                                    <td>监测值小于0.6，大于0.4时</td>
                                    <td>监测值大于等于0.6时</td>
                                    <td>监测值大于等于1.2时</td>
                                    <td>连续<select name="" id="">
                                        <option value="">1</option>
                                        <option value="">2</option>
                                        <option value="">3</option>
                                        <option value="">4</option>
                                        <option value="">5</option>
                                        <option value="">6</option>
                                        <option value="">7</option>
                                        <option value="">8</option>
                                        <option value="">9</option>
                                        <option value="">10</option>
                                    </select>次正常值后，自动消警</td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="exceedStandardAynchronizationTo">
                                <h3>同步到其它站点</h3>
                                <div class="exceedStandardselect clearfix">
                                    <div>
                                        <input type="checkbox" id="exceedStandardall" name="checkboxSelect">
                                        <label for="exceedStandardall" name="checkboxSelect">全选</label>
                                    </div>
                                    <ul class=""clearfix>
                                        <li>
                                            <input type="checkbox" id="exceedStandardother-1" name="checkboxSelect">
                                            <label for="exceedStandardother-1" name="checkboxSelect">白马河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="exceedStandardother-2" name="checkboxSelect">
                                            <label for="exceedStandardother-2" name="checkboxSelect">省电大站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="exceedStandardother-3" name="checkboxSelect">
                                            <label for="exceedStandardother-3" name="checkboxSelect">五四河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="exceedStandardother-4" name="checkboxSelect">
                                            <label for="exceedStandardother-4" name="checkboxSelect">瀛洲河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="exceedStandardother-5" name="checkboxSelect">
                                            <label for="exceedStandardother-5" name="checkboxSelect">凤坂河站</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="exceedStandardother-6" name="checkboxSelect">
                                            <label for="exceedStandardother-6" name="checkboxSelect">彬德闸排涝站</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="synchronousSetting">
                        <a href="#">同步质控运行设置</a>
                    </div>
                </div>
                <!--应急模式运行设置-->
                <div class="emergency-wrap">
                    <div class="emergency">
                        <div class="emergencySet">
                            <h2 class="clearfix">
                                <var>应急模式运行设置</var>
                                <span>2018-05-01 15:00</span>
                            </h2>
                            <div class="emergencySetCon clearfix">
                                <var>应急开关：</var>
                                <div>
                                    <input type="radio" name="checkOne" id="open" checked>
                                    <label for="open" name="checkOne">开启</label>
                                </div>
                                <div>
                                    <input type="radio" name="checkOne" id="close">
                                    <label for="close" name="checkOne">关闭</label>
                                </div>
                                <div>
                                    <select name="" id="">
                                        <option value="">1</option>
                                        <option value="">2</option>
                                        <option value="">3</option>
                                        <option value="">4</option>
                                        <option value="">5</option>
                                        <option value="">6</option>
                                        <option value="">7</option>
                                        <option value="">8</option>
                                        <option value="">9</option>
                                        <option value="">10</option>
                                    </select>次正常值后恢复正常模式
                                </div>
                            </div>
                        </div>
                        <div class="emergencySelect">
                            <h2 class="clearfix">
                                <var>应急模式关联参数选择</var>
                            </h2>
                            <div class="emergencySelectCon">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>
                                            <input type="checkbox" id="emergencyAll" name="checkboxSelect">
                                            <label for="emergencyAll" name="checkboxSelect"></label>
                                        </th>
                                        <th>参数</th>
                                        <th>应急启动阈值</th>
                                        <th>确认超标后运行</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <input type="checkbox" id="emergency-1" name="checkboxSelect">
                                            <label for="emergency-1" name="checkboxSelect"></label>
                                        </td>
                                        <td class="emergency-parameter">CODMn</td>
                                        <td>
                                            <input type="text">mg/L
                                        </td>
                                        <td class="emergency-set">设置</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>
                                            <input type="checkbox" id="emergency-2" name="checkboxSelect">
                                            <label for="emergency-2" name="checkboxSelect"></label>
                                        </td>
                                        <td class="emergency-parameter">氨氮</td>
                                        <td>
                                            <input type="text">mg/L
                                        </td>
                                        <td class="emergency-set">设置</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="emergencyAynchronizationTo">
                                    <h3>同步到其它站点</h3>
                                    <div class="emergencyselect clearfix">
                                        <div>
                                            <input type="checkbox" id="emergencyall" name="checkboxSelect">
                                            <label for="emergencyall" name="checkboxSelect">全选</label>
                                        </div>
                                        <ul class=""clearfix>
                                            <li>
                                                <input type="checkbox" id="emergencyother-1" name="checkboxSelect">
                                                <label for="emergencyother-1" name="checkboxSelect">白马河站</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="emergencyother-2" name="checkboxSelect">
                                                <label for="emergencyother-2" name="checkboxSelect">省电大站</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="emergencyother-3" name="checkboxSelect">
                                                <label for="emergencyother-3" name="checkboxSelect">五四河站</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="emergencyother-4" name="checkboxSelect">
                                                <label for="emergencyother-4" name="checkboxSelect">瀛洲河站</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="emergencyother-5" name="checkboxSelect">
                                                <label for="emergencyother-5" name="checkboxSelect">凤坂河站</label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="emergencyother-6" name="checkboxSelect">
                                                <label for="emergencyother-6" name="checkboxSelect">彬德闸排涝站</label>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="synchronousSetting">
                        <a href="#">同步质控运行设置</a>
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
<!--常规监测模式-设置-->
<script type="text/html" id="setContent">
    <div class="setCon">
        <div class="setSelect clearfix">
            <div>
                <input type="radio" name="checkOne" id="second" checked onchange="secondOrDay()">
                <label for="second" name="checkOne">按次数</label>
            </div>
            <div>
                <input type="radio" name="checkOne" id="day" onchange="secondOrDay()">
                <label for="day" name="checkOne">按天数</label>
            </div>
            <div class="settime" style="display: none;">
                <label for="startTime">开始时间：</label>
                <input readonly="readonly" type="text" class="Wdate" id="startTime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"/>
            </div>
        </div>
        <ul class="accordionToSecond selected">
            <li>
                <select name="" id="secondAfter1">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次水样后，做
                <select name="" id="secondAfterTest1">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次平行样测试
            </li>
            <li>
                <select name="" id="secondAfter2">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次水样后，做
                <select name="" id="secondAfterTest2">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次加标回收测试
            </li>
            <li>
                <select name="" id="secondAfter3">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次水样后，做
                <select name="" id="secondAfterTest3">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次标样测试
            </li>
            <li>
                <select name="" id="secondAfter4">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次水样后，做
                <select name="" id="secondAfterTest4">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次空白测试
            </li>
        </ul>
        <ul class="accordionToDay">
            <li>
                <select name="" id="dayAfter1">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>天后，做
                <select name="" id="dayAfterTest1">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次平行样测试
            </li>
            <li>
                <select name="" id="dayAfter2">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>天后，做
                <select name="" id="dayAfterTest2">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次加标回收测试
            </li>
            <li>
                <select name="" id="dayAfter3">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>天后，做
                <select name="" id="dayAfterTest3">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次标样测试
            </li>
            <li>
                <select name="" id="dayAfter4">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>天后，做
                <select name="" id="dayAfterTest4">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次空白测试
            </li>
        </ul>
    </div>
</script>
<!--数据异常运行设置-设置-->
<script type="text/html" id="abnormalSetContent">
    <div class="abnormalSetCon">
        <ul>
            <li>做
                <select name="" id="secondAfterTest1">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次平行样测试
            </li>
            <li>做
                <select name="" id="secondAfterTest2">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次加标回收测试
            </li>
            <li>
                做
                <select name="" id="secondAfterTest3">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次标样测试
            </li>
            <li>
                做
                <select name="" id="secondAfterTest4">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次空白测试
            </li>
        </ul>
    </div>
</script>
<!--参数超标设置-告警参数与阈值变更-->
<script type="text/html" id="exceedStandardContent">
    <div class="exceedStandardCon">
        <table class="table table-striped">
            <thead>
            <tr>
                <th rowspan="2">编号</th>
                <th rowspan="2" style="line-height: 58px;">参数名称</th>
                <th colspan="2">一般超标告警</th>
                <th colspan="2">严重超标告警</th>
                <th colspan="2">可能发生污染事故告警</th>
            </tr>
            <tr>
                <th> 下限(>)</th>
                <th>上限(≤)</th>
                <th> 下限(>)</th>
                <th>上限(≤)</th>
                <th> 下限(>)</th>
                <th>上限(≤)</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>氨氮</td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
            </tr>
            <tr>
                <td>2</td>
                <td>氨氮</td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
                <td><input type="text" value="3"></td>
            </tr>
            </tbody>
        </table>
    </div>
</script>
<!--应急模式运行设置-设置-->
<script type="text/html" id="emergencySetContent">
    <div class="emergencySetCon">
        <ul>
            <li>
                <select name="" id="emgsecondAfter1">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次水样后，做
                <select name="" id="emgsecondAfterTest1">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次平行样测试
            </li>
            <li>
                <select name="" id="emgsecondAfter2">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次水样后，做
                <select name="" id="emgsecondAfterTest2">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次加标回收测试
            </li>
            <li>
                <select name="" id="emgsecondAfter3">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次水样后，做
                <select name="" id="emgsecondAfterTest3">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次标样测试
            </li>
            <li>
                <select name="" id="emgsecondAfter4">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次水样后，做
                <select name="" id="emgsecondAfterTest4">
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                    <option value="">10</option>
                </select>次空白测试
            </li>
        </ul>
    </div>
</script>
</body>
</html>