<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>数据录入</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/reset.css" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/common.less" />
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/common.less" />
    <link rel="stylesheet" href="${basePath}/css/dataManage/ssi-uploader.css">
    <!--页面特有css-->
    <link rel="stylesheet" type="text/less" href="${basePath}/css/dataManage/dataExpert.less">
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
    <script type="text/javascript" src="${basePath}/js/ssi-uploader.js"></script>
    <!-- 页面特有js -->
    <script type="text/javascript" src="${basePath}/js/dataManage/dataExpert.js"></script>
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
                <p><a href="#" class="contentName">白马河站</a>&nbsp;/&nbsp;<var class="navName">数据录入</var></p>
            </div>
            <div class="dataAndLongRange clearfix">
                <span class="selected">录入监测数据</span>
                <span>批量补录数据</span>
            </div>
            <div class="dataAndLongRangeCon">
                <!-- 录入检测数据 -->
                <div class="dataAcquisition selected">
                    <div class="screen">
                        <h2 class="clearfix">
                            <var>数据录入</var>
                        </h2>
                        <div class="screenCon">
                            <form class="form-inline">
                                <div class="form-line-wrap">
                                    <div class="form-group">
                                        <label for="">是否替换数据：</label>
                                        <div class="radio-wrap">
                                            <span>
                                                <input type="radio" id="yes" name="bool" checked/>
                                                <label for="yes" name="radio">是</label>
                                            </span>
                                            <span>
                                                <input type="radio" id="no" name="bool"/>
                                                <label for="no" name="radio">否</label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-line-wrap">
                                    <div class="form-group">
                                        <label for="">站点名称：</label>
                                        <a href="javascript:;" class="name">白马河(1)</a>
                                    </div>
                                </div>
                                <div class="form-line-wrap">
                                    <div class="form-group">
                                        <label for="paramsChoose">参数选择：</label>
                                        <select id="paramsChoose" class="selectpicker">
                                            <option value="1">流速</option>
                                            <option value="2">水温</option>
                                            <option value="3">溶解氧</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-line-wrap">
                                    <div class="form-group">
                                        <label for="startDate2">监测时间：</label>
                                        <input id="startDate2" class="form-control date-input Wdate" type="text" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
                                    </div>
                                </div>
                                <div class="form-line-wrap">
                                    <div class="form-group">
                                        <label for="endDate2">数据值：</label>&nbsp;&nbsp;&nbsp;
                                        <input id="endDate2" class="form-control date-input" type="text"/>
                                    </div>
                                </div>
                                <div class="form-line-wrap">
                                    <div class="form-group">
                                        <label for="dataIdentification">数据标识：</label>
                                        <select id="dataIdentification" class="selectpicker">
                                            <option value="1">正常数据</option>
                                            <option value="2">质控失败</option>
                                            <option value="3">超量程</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="tac search-btn-wrap">
                                    <button type="button" class="search-btn">录入</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- 批量补录数据 -->
                <div class="longRangeControl">
                    <div class="screen">
                        <h2 class="clearfix">
                            <var>数据录入</var>
                        </h2>
                        <div class="screenCon">
                            <div class="form-inline upload-wrap">
                                <div class="form-line-wrap">
                                    <div class="form-group">
                                        <label for="">是否替换数据：</label>
                                        <div class="radio-wrap">
                                            <span>
                                                <input type="radio" id="yes1" name="bool1" checked/>
                                                <label for="yes1" name="radio">是</label>
                                            </span>
                                            <span>
                                                <input type="radio" id="no1" name="bool1"/>
                                                <label for="no1" name="radio">否</label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-line-wrap">
                                    <div class="form-group upload-box">
                                        <input type="file" multiple id="ssi-upload" name="file"/>
                                    </div>
                                </div>
                                <div class="form-line-wrap">
                                    <h4>上传说明</h4>
                                    <div>
                                        <p class="text-gray">第一步：点击“上传文件”按钮选择你要导入的EXCEL数据文件；EXCEL数据文件格式示例（支持XLS与XLSX格式）</p>
                                        <p class="text-gray">第二步：数据文件内容标题河分页名称必须与下面图表一致</p>
                                        <div class="demoImg"></div>
                                    </div>
                                </div>
                                <div class="tac search-btn-wrap">
                                    <button type="button" class="search-btn entry">录入</button>
                                    <a href="javascript:;" class="ablue">模板下载</a>
                                </div>
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