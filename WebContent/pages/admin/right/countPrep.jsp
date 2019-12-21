<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%--<!--_meta 作为公共模版分离出去-->--%>
<%--<!DOCTYPE HTML>--%>
<%--<html>--%>
<%--<head>--%>
<%--<meta charset="utf-8">--%>
<%--<meta name="renderer" content="webkit|ie-comp|ie-stand">--%>
<%--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">--%>
<%--<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />--%>
<%--<meta http-equiv="Cache-Control" content="no-siteapp" />--%>
<%--<link rel="Bookmark" href="/favicon.ico" >--%>
<%--<link rel="Shortcut Icon" href="/favicon.ico" />--%>
<%--<!--[if lt IE 9]>--%>
<%--<script type="text/javascript" src="lib/html5shiv.js"></script>--%>
<%--<script type="text/javascript" src="lib/respond.min.js"></script>--%>
<%--<![endif]-->--%>
<%--<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui/css/H-ui.min.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/H-ui.admin.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="<%=basePath%>lib/Hui-iconfont/1.0.8/iconfont.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/skin/default/skin.css" id="skin" />--%>
<%--<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/style.css" />--%>
<%--<!--[if IE 6]>--%>
<%--<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>--%>
<%--<script>DD_belatedPNG.fix('*');</script>--%>
<%--<![endif]-->--%>
<%--<!--/meta 作为公共模版分离出去-->--%>

<%--<title>销售统计</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<article class="page-container">--%>
	<%--<form action="" method="post" class="form form-horizontal" id="form-member-add">--%>
		<%--<div class="row cl">--%>
			<%--<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>已完成订单数： </label>--%>
			<%--<div class="formControls col-xs-8 col-sm-9" style="width:300px;">--%>
				<%--<input type="text" disabled="disabled" class="input-text" value="${prepNumber}" placeholder="" id="startStation" name="startStation">--%>
			<%--</div>--%>
		<%--</div>--%>
		<%--<div class="row cl">--%>
			<%--<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>总销售额：</label>--%>
			<%--<div class="formControls col-xs-8 col-sm-9" style="width:300px;">--%>
				<%--<input type="text" disabled="disabled" class="input-text" value="${prepPrice}" placeholder="" id="endStation" name="endStation">--%>
			<%--</div>--%>
		<%--</div>--%>
	<%--</form>--%>
<%--</article>--%>
<%--&lt;%&ndash;折线图&ndash;%&gt;--%>


<%--<!--_footer 作为公共模版分离出去-->--%>
<%--<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> --%>
<%--<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>--%>
<%--<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> --%>
<%--<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->--%>

<%--<!--请在下方写此页面业务相关的脚本--> --%>
<%--<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>--%>
<%--<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> --%>
<%--<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> --%>
<%--<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>--%>

<%--<!--/请在上方写此页面业务相关的脚本-->--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<!--[if lt IE 9]>
	<script type="text/javascript" src="lib/html5shiv.js"></script>
	<script type="text/javascript" src="lib/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
	<!--[if IE 6]>
	<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
	<script>DD_belatedPNG.fix('*');</script>
	<![endif]-->
	<title>折线图</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i>首页<span class="c-gray en">&gt;</span>财务结算<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="row cl">
	<div class="formControls col-xs-4 col-sm-6" style="width:300px;">
		<span class="select-box">
		  <select class="select" size="1" name="demo1">
			<option value="" selected>年份</option>
			<option value="2015">2015年</option>
			<option value="2016">2016年</option>
			<option value="2017">2017年</option>
			<option value="2018">2018年</option>
			<option value="2019">2019年</option>
		  </select>
		</span>
	</div>
</div>

<div class="page-container">
	<div id="container" style="min-width:700px;height:400px"></div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
<script type="text/javascript">
    $(function () {
        Highcharts.chart('container', {
            title: {
                text: '月度财务结算',
                x: -20 //center
            },
            xAxis: {
                categories: ['一月', '二月', '三月', '四月', '五月', '六月','七月', '八月', '九月', '十月', '十一月', '十二月']
            },
            yAxis: {
                title: {
                    text: '票数（钱数）'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: '已售票数',
                data: [200, 87, 57, 113, 170, 220, 248, 241, 201, 141, 86, 25]
            }, {
                name: '销售额',
                data: [4900, 1752, 3530, 3854, 5152, 5356, 5254, 5056, 4021, 2698, 1666, 567]
            }]
        });
    });
</script>
</body>
</html>