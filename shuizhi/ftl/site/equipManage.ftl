<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>设备管理</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/ui-dialog.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/js/time/skin/WdatePicker.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap-select.css" />
    <link rel="stylesheet" href="${basePath}/css/zTreeStyle.css">
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/site/equipManage.less" />
    <script type="text/javascript" src="${basePath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/less.js"></script>
    <script type="text/javascript" src="${basePath}/js/common.js"></script>
    <script type="text/javascript" src="${basePath}/js/dialog.js"></script>
    <script src="${basePath}/js/time/WdatePicker.js"></script>
    <script src="${basePath}/js/arttemplate.js"></script>
    <script src="${basePath}/js/bootstrap.js"></script>
    <script src="${basePath}/js/bootstrap-select.js"></script>
    <script src="${basePath}/js/jquery.ztree.all-3.5.js"></script>
    <script src="${basePath}/js/jquery.ztree.exhide.js"></script>
    <script src="${basePath}/js/jquery.validate.min.js"></script>
    <script src="${basePath}/js/messages_zh.js"></script>
    <!--页面特有js-->
    <script src="${basePath}/js/site/equipManage.js"></script>
</head>
<body>
<div class="wrap">
    <div class="headTitle clearfix"></div>
    <div class="wrap-con">
        <div class="nav">
        ${name}
        </div>
        <div class="wrapCon">
            <div class="nowAddr clearfix">
                <span>当前位置：</span>
                <p><a href="#" class="contentName">白马河站</a>&nbsp;/&nbsp;<var class="navName">设备管理</var></p>
            </div>
            <div class="equipTab clearfix">
                <span class="selected">监测设备管理</span>
                <span>数采仪管理</span>
                <span>视频监控设备管理</span>
            </div>
            <div class="equipTabCon">
                <!--监测设备信息-->
                <div class="equipManage selected">
                    <div class="equipInfo">
                        <h2 class="clearfix">
                            <var>监测设备信息</var>
                            <a href="#" class="equipInfo-add">新增监测设备</a>
                        </h2>
                        <div class="equipInfoCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>
                                        <input type="checkbox" id="equipAll" name="checkboxSelect">
                                        <label for="equipAll" name="checkboxSelect"></label>
                                    </th>
                                    <th>设备名称</th>
                                    <th>设备编号</th>
                                    <th>设备型号</th>
                                    <th>监测参数</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody class="tbodyCon">
                                <tr id="1">
                                    <td>1</td>
                                    <td>
                                        <input type="checkbox" id="equipOther-1" name="checkboxSelect">
                                        <label for="equipOther-1" name="checkboxSelect"></label>
                                    </td>
                                    <td class="paraName">1234</td>
                                    <td>TP001</td>
                                    <td>OTS001</td>
                                    <td>总磷、总氮</td>
                                    <td>
                                        <span class="equipInfo-detail">详情</span>
                                        <span class="equipInfo-delete">删除</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <div>
                                <span class="equipInfo-deleteBatch">批量删除</span>
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
                <!--数采仪信息-->
                <div class="instrumentManage">
                    <div class="instrument">
                        <h2 class="clearfix">
                            <var>数采仪信息</var>
                            <a href="#" class="instrument-add">新增数采仪</a>
                        </h2>
                        <div class="instrumentCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>
                                        <input type="checkbox" id="instrumentAll" name="checkboxSelect">
                                        <label for="instrumentAll" name="checkboxSelect"></label>
                                    </th>
                                    <th>设备名称</th>
                                    <th>设备编号</th>
                                    <th>设备型号</th>
                                    <th>关联监测设备</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody class="tbodyCon">
                                <tr id="1">
                                    <td>1</td>
                                    <td>
                                        <input type="checkbox" id="instrumentOther-1" name="checkboxSelect">
                                        <label for="instrumentOther-1" name="checkboxSelect"></label>
                                    </td>
                                    <td class="paraName">总磷总氮分析仪</td>
                                    <td>TP001</td>
                                    <td>OTS001</td>
                                    <td><a href="">总磷总氮分析仪、水质多参数分析仪</a></td>
                                    <td>
                                        <span class="instrument-detail">详情</span>
                                        <span class="instrument-delete">删除</span>
                                    </td>
                                </tr>
                                <tr id="2">
                                    <td>2</td>
                                    <td>
                                        <input type="checkbox" id="instrumentOther-2" name="checkboxSelect">
                                        <label for="instrumentOther-2" name="checkboxSelect"></label>
                                    </td>
                                    <td class="paraName">总磷总氮分析仪</td>
                                    <td>TP001</td>
                                    <td>OTS001</td>
                                    <td><a href="">总磷总氮分析仪、水质多参数分析仪</a></td>
                                    <td>
                                        <span class="instrument-detail">详情</span>
                                        <span class="instrument-delete">删除</span>
                                    </td>
                                </tr>
                                <tr id="3">
                                    <td>3</td>
                                    <td>
                                        <input type="checkbox" id="instrumentOther-3" name="checkboxSelect">
                                        <label for="instrumentOther-3" name="checkboxSelect"></label>
                                    </td>
                                    <td class="paraName">总磷总氮分析仪</td>
                                    <td>TP001</td>
                                    <td>OTS001</td>
                                    <td><a href="">总磷总氮分析仪、水质多参数分析仪</a></td>
                                    <td>
                                        <span class="instrument-detail">详情</span>
                                        <span class="instrument-delete">删除</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <div>
                                <span class="instrument-deleteBatch">批量删除</span>
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
                <!--视频监控设备管理-->
                <div class="videoManage">
                    <div class="video">
                        <h2 class="clearfix">
                            <var>视频监控设备信息</var>
                            <a href="#" class="video-add">新增视频监控设备</a>
                        </h2>
                        <div class="videoCon">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>
                                        <input type="checkbox" id="videoAll" name="checkboxSelect">
                                        <label for="videoAll" name="checkboxSelect"></label>
                                    </th>
                                    <th>负责人</th>
                                    <th>联系方式</th>
                                    <th>中心地址</th>
                                    <th>访问端口号</th>
                                    <th>访问用户名</th>
                                    <th>访问密码</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody class="tbodyCon">
                                <tr id="1">
                                    <td>1</td>
                                    <td>
                                        <input type="checkbox" id="videOther-1" name="checkboxSelect">
                                        <label for="videOther-1" name="checkboxSelect"></label>
                                    </td>
                                    <td>运维001</td>
                                    <td>12312312312</td>
                                    <td>192.168.0.12</td>
                                    <td>9000</td>
                                    <td>admin</td>
                                    <td>admin_123</td>
                                    <td>
                                        <span class="video-detail">详情</span>
                                        <span class="video-delete">删除</span>
                                    </td>
                                </tr>
                                <tr id="2">
                                    <td>2</td>
                                    <td>
                                        <input type="checkbox" id="videOther-2" name="checkboxSelect">
                                        <label for="videOther-2" name="checkboxSelect"></label>
                                    </td>
                                    <td>运维001</td>
                                    <td>12312312312</td>
                                    <td>192.168.0.12</td>
                                    <td>9000</td>
                                    <td>admin</td>
                                    <td>admin_123</td>
                                    <td>
                                        <span class="video-detail">详情</span>
                                        <span class="video-delete">删除</span>
                                    </td>
                                </tr>
                                <tr id="3">
                                    <td>3</td>
                                    <td>
                                        <input type="checkbox" id="videOther-3" name="checkboxSelect">
                                        <label for="videOther-3" name="checkboxSelect"></label>
                                    </td>
                                    <td>运维001</td>
                                    <td>12312312312</td>
                                    <td>192.168.0.12</td>
                                    <td>9000</td>
                                    <td>admin</td>
                                    <td>admin_123</td>
                                    <td>
                                        <span class="video-detail">详情</span>
                                        <span class="video-delete">删除</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <div>
                                <span class="video-deleteBatch">批量删除</span>
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
<!--树搜索-->
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
<!--监测设备管理-新增监测设备-->
<script type="text/html" id="addNew">
    <form action="" class="form">
        <div class="addNew">
            <h3>设备信息</h3>
            <ul class="equip-info">
                <li class="clearfix">
                    <div>
                        <label for="equipName">设备名称：</label>
                        <input type="text" id="equipName" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="equipNum">设备编号：</label>
                        <input type="text" id="equipNum" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="equipModel">设备型号：</label>
                        <p>
                            <select name="" id="equipModel" class="selectpicker bs-select-hidden">
                                <option value="">sss</option>
                            </select>
                        </p>
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="installDate">安装日期：</label>
                        <input readonly="readonly" type="text" class="Wdate" id="installDate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
                    </div>
                    <div>
                        <label for="expirationDate">有效期限（年）：</label>
                        <input type="text" id="expirationDate">
                    </div>
                </li>
            </ul>
        </div>
        <div class="monitorData">
            <div class="clearfix">
                <h3>监测参数</h3>
                <a href="#" class="monitor-add-perameter" onclick="addNewPerameter()">新增参数</a>
            </div>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>参数名称</th>
                    <th>参数编码</th>
                    <th>参数单位</th>
                    <th>参数精度</th>
                    <th>量程下限</th>
                    <th>量程上限</th>
                    <th>检测周期（分钟）</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                </tbody>
            </table>
        </div>
        <!--该input不能删除也不用于按钮提交，用于方便validate判断-->
        <input class="submit" type="submit" value="Submit" style="display: none;">
    </form>
</script>
<!--监测设备管理-新增参数-->
<script type="text/html" id="addPerameter" onload="">
    <div class="addPerameter">
        <div class="clearfix">
            <label for="keywords">关键词：</label>
            <input type="text" id="keywords">
            <a href="#" class="searchParameter"  onclick="itemQuery()">查询</a>
        </div>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>编号</th>
                <th>
                    <input type="checkbox" id="addPeraAll" name="checkboxSelect">
                    <label for="addPeraAll" name="checkboxSelect"></label>
                </th>
                <th>参数类型</th>
                <th>参数名称</th>
                <th>参数编号</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>
                    <input type="checkbox" id="addPeraOther-1" name="checkboxSelect">
                    <label for="addPeraOther-1" name="checkboxSelect"></label>
                </td>
                <td>地表水监测参数</td>
                <td>电池电压</td>
                <td>编号001</td>
            </tr>
            <tr>
                <td>2</td>
                <td>
                    <input type="checkbox" id="addPeraOther-2" name="checkboxSelect">
                    <label for="addPeraOther-2" name="checkboxSelect"></label>
                </td>
                <td>地表水监测参数</td>
                <td>电池电压</td>
                <td>编号001</td>
            </tr>
            <tr>
                <td>3</td>
                <td>
                    <input type="checkbox" id="addPeraOther-3" name="checkboxSelect">
                    <label for="addPeraOther-3" name="checkboxSelect"></label>
                </td>
                <td>地表水监测参数</td>
                <td>电池电压</td>
                <td>编号001</td>
            </tr>
            </tbody>
        </table>
    </div>
</script>
<!--监测设备管理-编辑监测设备-->
<script type="text/html" id="editEquip">
        <form action="" class="form">
        <div class="editEquip">
        <h3>设备信息</h3>
        <ul class="equip-info">
        <li class="clearfix">
        <div>
        <label for="editequipName">设备名称：</label>
<input type="text" id="editequipName" required>
<span>*</span>
</div>
<div>
<label for="editequipNum">设备编号：</label>
<input type="text" id="editequipNum" required>
<span>*</span>
</div>
<div>
<label for="editequipModel">设备型号：</label>
<p>
<select name="" id="editequipModel" class="selectpicker bs-select-hidden">
        <option value="">sss</option>
        </select>
        </p>
        </div>
        </li>
        <li class="clearfix">
        <div>
        <label for="editinstallDate">安装日期：</label>
<input readonly="readonly" type="text" class="Wdate" id="editinstallDate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
        </div>
        <div>
        <label for="editexpirationDate">有效期限（年）：</label>
<input type="text" id="editexpirationDate">
        </div>
        </li>
        </ul>
        </div>
        <div class="editmonitorData">
        <div class="clearfix">
        <h3>监测参数</h3>
        <a href="#" class="monitor-add-perameter" onclick="editPerameter()">参数变更</a>
        </div>
        <table class="table table-striped">
        <thead>
        <tr>
        <th>编号</th>
        <th>参数名称</th>
        <th>参数编码</th>
        <th>参数单位</th>
        <th>参数精度</th>
        <th>量程下限</th>
        <th>量程上限</th>
        <th>检测周期（分钟）</th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td>总氮</td>
<td>TP001</td>
<td>mg/L</td>
<td>0.01</td>
<td>
<input type="text" value="2">
        </td>
        <td>
        <input type="text" value="2">
        </td>
        <td>
        <input type="text" value="120">
        </td>
        </tr>
        </tbody>
        </table>
        </div>
        <!--该input不能删除也不用于按钮提交，用于方便validate判断-->
        <input class="submit" type="submit" value="Submit" style="display: none;">
        </form>
</script>
<!--监测设备管理-编辑参数-->
<script type="text/html" id="editPerameter">
    <div class="editPerameter">
        <div class="clearfix">
            <label for="keyword">关键词：</label>
            <input type="text" id="keyword">
            <a href="#" class="searchParameter">查询</a>
        </div>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>编号</th>
                <th>
                    <input type="checkbox" id="editPeraAll" name="checkboxSelect">
                    <label for="editPeraAll" name="checkboxSelect"></label>
                </th>
                <th>参数类型</th>
                <th>参数名称</th>
                <th>参数编号</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>
                    <input type="checkbox" id="editPeraOther-1" name="checkboxSelect">
                    <label for="editPeraOther-1" name="checkboxSelect"></label>
                </td>
                <td>地表水监测参数</td>
                <td>电池电压</td>
                <td>编号001</td>
            </tr>
            <tr>
                <td>2</td>
                <td>
                    <input type="checkbox" id="editPeraOther-2" name="checkboxSelect">
                    <label for="editPeraOther-2" name="checkboxSelect"></label>
                </td>
                <td>地表水监测参数</td>
                <td>电池电压</td>
                <td>编号001</td>
            </tr>
            <tr>
                <td>3</td>
                <td>
                    <input type="checkbox" id="editPeraOther-3" name="checkboxSelect">
                    <label for="editPeraOther-3" name="checkboxSelect"></label>
                </td>
                <td>地表水监测参数</td>
                <td>电池电压</td>
                <td>编号001</td>
            </tr>
            </tbody>
        </table>
    </div>
</script>
<!--数采仪管理-编辑数采仪设备-->
<script type="text/html" id="editInstrument">
    <form action="" id="" class="form">
        <div class="editInstrument">
            <h3>设备信息</h3>
            <ul class="editInstrument-info">
                <li class="clearfix">
                    <div>
                        <label for="equipNameInstrument">设备名称：</label>
                        <input type="text" id="equipNameInstrument" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="equipNumInstrument">设备编号：</label>
                        <input type="text" id="equipNumInstrument" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="equipModelInstrument">设备型号：</label>
                        <p>
                            <select name="" id="equipModelInstrument" class="selectpicker bs-select-hidden">
                                <option value="">sss</option>
                            </select>
                        </p>
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="installDateInstrument">安装日期：</label>
                        <input readonly="readonly" type="text" class="Wdate" id="installDateInstrument" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
                    </div>
                    <div>
                        <label for="expirationDateInstrument">有效期限（年）：</label>
                        <input type="text" id="expirationDateInstrument">
                    </div>
                </li>
            </ul>
        </div>
        <div class="editInstrumentPara">
            <div class="clearfix">
                <h3>关联监测设备</h3>
            </div>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>选择</th>
                    <th>设备名称</th>
                    <th>关联参数</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>
                        <input type="checkbox" id="editInstrument-1" name="checkboxSelect">
                        <label for="editInstrument-1" name="checkboxSelect"></label>
                    </td>
                    <td>总磷总氮分析仪</td>
                    <td>总磷、总氮</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>
                        <input type="checkbox" id="editInstrument-2" name="checkboxSelect">
                        <label for="editInstrument-2" name="checkboxSelect"></label>
                    </td>
                    <td>总磷总氮分析仪</td>
                    <td>总磷、总氮</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>
                        <input type="checkbox" id="editInstrument-3" name="checkboxSelect">
                        <label for="editInstrument-3" name="checkboxSelect"></label>
                    </td>
                    <td>总磷总氮分析仪</td>
                    <td>总磷、总氮</td>
                </tr>
                </tbody>
            </table>
        </div>
        <!--该input不能删除也不用于按钮提交，用于方便validate判断-->
        <input class="submit" type="submit" value="Submit" style="display: none;">
    </form>
</script>
<!--数采仪管理-新增数采仪设备-->
<script type="text/html" id="addInstrument">
    <form action="" class="form">
        <div class="addInstrument">
            <h3>设备信息</h3>
            <ul class="addInstrument-info">
                <li class="clearfix">
                    <div>
                        <label for="addNameInstrument">设备名称：</label>
                        <input type="text" id="addNameInstrument" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="addNumInstrument">设备编号：</label>
                        <input type="text" id="addNumInstrument" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="addModelInstrument">设备型号：</label>
                        <p>
                            <select name="" id="addModelInstrument" class="selectpicker bs-select-hidden">
                                <option value="">sss</option>
                            </select>
                        </p>
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="addinstallDateInstrument">安装日期：</label>
                        <input readonly="readonly" type="text" class="Wdate" id="addinstallDateInstrument" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
                    </div>
                    <div>
                        <label for="addexpirationDateInstrument">有效期限（年）：</label>
                        <input type="text" id="addexpirationDateInstrument">
                    </div>
                </li>
            </ul>
        </div>
        <div class="addInstrumentPara">
            <div class="clearfix">
                <h3>关联监测设备</h3>
            </div>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>选择</th>
                    <th>设备名称</th>
                    <th>关联参数</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>
                        <input type="checkbox" id="addInstrument-1" name="checkboxSelect">
                        <label for="addInstrument-1" name="checkboxSelect"></label>
                    </td>
                    <td>总磷总氮分析仪</td>
                    <td>总磷、总氮</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>
                        <input type="checkbox" id="addInstrument-2" name="checkboxSelect">
                        <label for="addInstrument-2" name="checkboxSelect"></label>
                    </td>
                    <td>总磷总氮分析仪</td>
                    <td>总磷、总氮</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>
                        <input type="checkbox" id="addInstrument-3" name="checkboxSelect">
                        <label for="addInstrument-3" name="checkboxSelect"></label>
                    </td>
                    <td>总磷总氮分析仪</td>
                    <td>总磷、总氮</td>
                </tr>
                </tbody>
            </table>
        </div>
        <!--该input不能删除也不用于按钮提交，用于方便validate判断-->
        <input class="submit" type="submit" value="Submit" style="display: none;">
    </form>
</script>
<!--视频监控设备管理-新增视频监控设备-->
<script type="text/html" id="addVideo">
    <form action="" id="addVideoForm" class="form">
        <div class="addVideo">
            <h3>设备信息</h3>
            <ul class="addVideo-info">
                <li class="clearfix">
                    <div>
                        <label for="addVideoPeople">负责人：</label>
                        <input type="text" id="addVideoPeople" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="addVideoPhone">联系方式：</label>
                        <input type="text" id="addVideoPhone" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="addVideoModel">设备型号：</label>
                        <p>
                            <select name="" id="addVideoModel" class="selectpicker bs-select-hidden">
                                <option value="">sss</option>
                            </select>
                        </p>
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="addVideoUnit">建设单位：</label>
                        <input type="text" id="addVideoUnit" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="addVideoexpirationDate">建设日期：</label>
                        <input readonly="readonly" type="text" class="Wdate" id="addVideoexpirationDate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
                    </div>
                </li>
            </ul>
        </div>
        <div class="addVideoPara">
            <div class="clearfix">
                <h3>视频监控信息</h3>
            </div>
            <ul class="addVideoPara-info">
                <li class="clearfix">
                    <div>
                        <label for="centerAddr">中心地址：</label>
                        <input type="text" id="centerAddr" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="accessPortNumber">访问端口号：</label>
                        <input type="text" id="accessPortNumber" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="userName">中心地址：</label>
                        <input type="text" id="userName" required>
                        <span>*</span>
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="password">访问密码：</label>
                        <input type="text" id="password" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="cameraId">摄像头ID：</label>
                        <input type="text" id="cameraId">
                    </div>
                    <div>
                        <label for="cameraPortNumber">摄像头端口：</label>
                        <input type="text" id="cameraPortNumber">
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="codeId">编码器ID：</label>
                        <input type="text" id="codeId">
                    </div>
                    <div>
                        <label for="serverIp">转发服务IP：</label>
                        <input type="text" id="serverIp">
                    </div>
                    <div>
                        <label for="serverPort">转发服务端口：</label>
                        <input type="text" id="serverPort">
                    </div>
                </li>
                <li class="clearfix radioLi">
                    <label for="">是否转发：</label>
                    <div>
                        <input type="radio" id="forward" name="checkOne" checked>
                        <label for="forward" name="checkOne">转发</label>
                        <input type="radio" id="noforward" name="checkOne">
                        <label for="noforward" name="checkOne">不转发</label>
                    </div>
                    <label for="">是否可控：</label>
                    <div>
                        <input type="radio" id="control" name="checkOne-2" checked>
                        <label for="control" name="checkOne-2">可控</label>
                        <input type="radio" id="nocontrol" name="checkOne-2">
                        <label for="nocontrol" name="checkOne-2">不可控</label>
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="videoBrand">视频品牌：</label>
                        <p>
                            <select name="" id="videoBrand" class="selectpicker bs-select-hidden">
                                <option value="">海康</option>
                            </select>
                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <!--该input不能删除也不用于按钮提交，用于方便validate判断-->
        <input class="submit" type="submit" value="Submit" style="display: none;">
    </form>
</script>
<!--视频监控设备管理-编辑视频监控设备-->
<script type="text/html" id="editVideo">
    <form action="" id="commentForm" class="form">
        <div class="editVideo">
            <h3>设备信息</h3>
            <ul class="editVideo-info">
                <li class="clearfix">
                    <div>
                        <label for="editVideoPeople">负责人：</label>
                        <input type="text" id="editVideoPeople" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="editVideoPhone">联系方式：</label>
                        <input type="text" id="editVideoPhone" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="editVideoModel">设备型号：</label>
                        <p>
                            <select name="" id="editVideoModel" class="selectpicker bs-select-hidden">
                                <option value="">sss</option>
                            </select>
                        </p>
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="editVideoUnit">建设单位：</label>
                        <input type="text" id="editVideoUnit" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="editVideoexpirationDate">建设日期：</label>
                        <input readonly="readonly" type="text" class="Wdate" id="editVideoexpirationDate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
                    </div>
                </li>
            </ul>
        </div>
        <div class="editVideoPara">
            <div class="clearfix">
                <h3>视频监控信息</h3>
            </div>
            <ul class="editVideoPara-info">
                <li class="clearfix">
                    <div>
                        <label for="editcenterAddr">中心地址：</label>
                        <input type="text" id="editcenterAddr" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="editaccessPortNumber">访问端口号：</label>
                        <input type="text" id="editaccessPortNumber" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="edituserName">中心地址：</label>
                        <input type="text" id="edituserName" required>
                        <span>*</span>
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="editpassword">访问密码：</label>
                        <input type="text" id="editpassword" required>
                        <span>*</span>
                    </div>
                    <div>
                        <label for="editcameraId">摄像头ID：</label>
                        <input type="text" id="editcameraId">
                    </div>
                    <div>
                        <label for="editcameraPortNumber">摄像头端口：</label>
                        <input type="text" id="editcameraPortNumber">
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="editcodeId">编码器ID：</label>
                        <input type="text" id="editcodeId">
                    </div>
                    <div>
                        <label for="editserverIp">转发服务IP：</label>
                        <input type="text" id="editserverIp">
                    </div>
                    <div>
                        <label for="editserverPort">转发服务端口：</label>
                        <input type="text" id="editserverPort">
                    </div>
                </li>
                <li class="clearfix radioLi">
                    <label for="">是否转发：</label>
                    <div>
                        <input type="radio" id="editforward" name="checkOne" checked>
                        <label for="editforward" name="checkOne">转发</label>
                        <input type="radio" id="editnoforward" name="checkOne">
                        <label for="editnoforward" name="checkOne">不转发</label>
                    </div>
                    <label for="">是否可控：</label>
                    <div>
                        <input type="radio" id="editcontrol" name="checkOne-2" checked>
                        <label for="editcontrol" name="checkOne-2">可控</label>
                        <input type="radio" id="editnocontrol" name="checkOne-2">
                        <label for="editnocontrol" name="checkOne-2">不可控</label>
                    </div>
                </li>
                <li class="clearfix">
                    <div>
                        <label for="editvideoBrand">视频品牌：</label>
                        <p>
                            <select name="" id="editvideoBrand" class="selectpicker bs-select-hidden">
                                <option value="">海康</option>
                            </select>
                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <!--该input不能删除也不用于按钮提交，用于方便validate判断-->
        <input class="submit" type="submit" value="Submit" style="display: none;">
    </form>
</script>
</body>
</html>