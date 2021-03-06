<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>监测标准配置</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap-select.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/ui-dialog.css" />
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/monitorStandard/monitorConfigure.less" />
    <script type="text/javascript" src="${basePath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/less.js"></script>
    <script type="text/javascript" src="${basePath}/js/common.js"></script>
    <script src="${basePath}/js/bootstrap.js"></script>
    <script src="${basePath}/js/bootstrap-select.js"></script>
    <script src="${basePath}/js/arttemplate.js"></script>
    <script type="text/javascript" src="${basePath}/js/dialog.js"></script>
    <script src="${basePath}/js/jquery.validate.min.js"></script>
    <script src="${basePath}/js/messages_zh.js"></script>
    <!--页面特有js-->
    <script src="${basePath}/js/monitorStandard/monitorConfigure.js"></script>
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
                <p><var class="navName">监测标准配置</var></p>
            </div>
            <div class="monitorCon">
                <div class="monitorSelect">
                    <h2 class="clearfix"><var>筛选</var></h2>
                    <div class="monitorSelectCon">
                        <label for="standardName">标准组名称：</label>
                        <input type="text" id="standardName">
                        <a href="#" class="monitorSearch">查询</a>
                    </div>
                </div>
                <div class="monitorSd">
                    <h2 class="clearfix">
                        <var>监测标准</var>
                        <a href="#" class="addMonitor">新增监测标准组</a>
                    </h2>
                    <div class="monitorSdCon">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>
                                    <input type="checkbox" id="monitorAll" name="checkboxSelect">
                                    <label for="monitorAll" name="checkboxSelect"></label>
                                </th>
                                <th>标准组名称</th>
                                <th>标准组简介</th>
                                <th>关联站点</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody class="tbodyCon">
                            <tr id="1">
                                <td>1</td>
                                <td>
                                    <input type="checkbox" id="monitorOther-1" name="checkboxSelect">
                                    <label for="monitorOther-1" name="checkboxSelect"></label>
                                </td>
                                <td>地表水环境质量标准</td>
                                <td>111</td>
                                <td><a href="#" class="linkSite">白马河</a></td>
                                <td>
                                    <span class="monitor-detail">详情</span>
                                    <span class="monitor-delete">删除</span>
                                </td>
                            </tr>
                            <tr id="2">
                                <td>2</td>
                                <td>
                                    <input type="checkbox" id="monitorOther-2" name="checkboxSelect">
                                    <label for="monitorOther-2" name="checkboxSelect"></label>
                                </td>
                                <td>地表水环境质量标准</td>
                                <td>111</td>
                                <td><a href="#" class="linkSite">白马河</a></td>
                                <td>
                                    <span class="monitor-detail">详情</span>
                                    <span class="monitor-delete">删除</span>
                                </td>
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
<!--关联站点-->
<script type="text/html" id="linkSiteList">
    <div class="linkSiteList">
        <div class="linkSiteSearch">
            <label for="area">区域：</label>
            <p>
                <select name="" id="area" class="selectpicker show-tick form-control" data-hide-disabled="true" data-live-search="true">
                    <option value="">111</option>
                </select>
            </p>
            <a href="#" class="linkSiteList-search">查询</a>
        </div>
        <div class="linkSiteListCon">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>
                        <input type="checkbox" id="linkSiteAll" name="checkboxSelect">
                        <label for="linkSiteAll" name="checkboxSelect"></label>
                    </th>
                    <th>站点名称</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>
                        <input type="checkbox" id="linkSiteOther-1" name="checkboxSelect">
                        <label for="linkSiteOther-1" name="checkboxSelect"></label>
                    </td>
                    <td>白马河站</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>
                        <input type="checkbox" id="linkSiteOther-2" name="checkboxSelect">
                        <label for="linkSiteOther-2" name="checkboxSelect"></label>
                    </td>
                    <td>白马河站</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>
                        <input type="checkbox" id="linkSiteOther-3" name="checkboxSelect">
                        <label for="linkSiteOther-3" name="checkboxSelect"></label>
                    </td>
                    <td>白马河站</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>
                        <input type="checkbox" id="linkSiteOther-4" name="checkboxSelect">
                        <label for="linkSiteOther-4" name="checkboxSelect"></label>
                    </td>
                    <td>白马河站</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</script>
<!--编辑监测标准配置-->
<script type="text/html" id="editStandard">
    <form action="" class="form">
        <div class="editStandard">
            <h3>编辑标准组</h3>
            <div class="clearfix">
                <label for="standardName2">标准组名称：</label>
                <input type="text" id="standardName2" required>
                <span>*</span>
            </div>
            <div class="clearfix">
                <label for="standardIntroduce">标准组简介：</label>
                <textarea name="" id="standardIntroduce"></textarea>
            </div>
            <h3 class="childList">
                <var>子标准列表</var>
                <a href="#" class="addStandard" onclick="addStandard();">添加子标准</a>
            </h3>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th rowspan="2" style="line-height:78px;">选择</th>
                    <th rowspan="2" style="line-height:78px;">参数名称</th>
                    <th colspan="2"><input type="text" value="地表水环境质量一类标准"></th>
                </tr>
                <tr>
                    <th>下限(>)</th>
                    <th>上限(≤)</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <input type="checkbox" id="standard-1" name="checkboxSelect">
                        <label for="standard-1" name="checkboxSelect"></label>
                    </td>
                    <td>总氮</td>
                    <td><input type="text" value="0.3"></td>
                    <td><input type="text" value="6"></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" id="standard-2" name="checkboxSelect">
                        <label for="standard-2" name="checkboxSelect"></label>
                    </td>
                    <td>总氮</td>
                    <td><input type="text" value="0.3"></td>
                    <td><input type="text" value="6"></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" id="standard-3" name="checkboxSelect">
                        <label for="standard-3" name="checkboxSelect"></label>
                    </td>
                    <td>总氮</td>
                    <td><input type="text" value="0.3"></td>
                    <td><input type="text" value="6"></td>
                </tr>
                </tbody>
            </table>
        </div>
        <!--该input不能删除也不用于按钮提交，用于方便validate判断-->
        <input class="submit" type="submit" value="Submit" style="display: none;">
    </form>
</script>
<!--新增监测标准配置-->
<script type="text/html" id="addStd">
    <form action="" class="form">
        <div class="addStd">
            <h3>新增标准组</h3>
            <div class="clearfix">
                <label for="addstandardName2">标准组名称：</label>
                <input type="text" id="addstandardName2" required>
                <span>*</span>
            </div>
            <div class="clearfix">
                <label for="addstandardIntroduce">标准组简介：</label>
                <textarea name="" id="addstandardIntroduce"></textarea>
            </div>
            <h3 class="childList">
                <var>子标准列表</var>
                <a href="#" class="addStandard" onclick="newStandard();">添加子标准</a>
            </h3>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th rowspan="2" style="line-height:78px;">选择</th>
                    <th rowspan="2" style="line-height:78px;">参数名称</th>
                    <th colspan="2"><input type="text" value="地表水环境质量一类标准"></th>
                </tr>
                <tr>
                    <th>下限(>)</th>
                    <th>上限(≤)</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <input type="checkbox" id="addstandard-1" name="checkboxSelect">
                        <label for="addstandard-1" name="checkboxSelect"></label>
                    </td>
                    <td>总氮</td>
                    <td><input type="text" value="0.3"></td>
                    <td><input type="text" value="6"></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" id="addstandard-2" name="checkboxSelect">
                        <label for="addstandard-2" name="checkboxSelect"></label>
                    </td>
                    <td>总氮</td>
                    <td><input type="text" value="0.3"></td>
                    <td><input type="text" value="6"></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" id="addstandard-3" name="checkboxSelect">
                        <label for="addstandard-3" name="checkboxSelect"></label>
                    </td>
                    <td>总氮</td>
                    <td><input type="text" value="0.3"></td>
                    <td><input type="text" value="6"></td>
                </tr>
                </tbody>
            </table>
        </div>
    </form>
    <!--该input不能删除也不用于按钮提交，用于方便validate判断-->
    <input class="submit" type="submit" value="Submit" style="display: none;">
</script>
</body>
</html>