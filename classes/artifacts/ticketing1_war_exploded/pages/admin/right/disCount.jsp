<%--
  Created by IntelliJ IDEA.
  User: 某杰
  Date: 2019/12/21
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="Bookmark" href="/favicon.ico" >
    <link rel="Shortcut Icon" href="/favicon.ico" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5shiv.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/style.css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--/meta 作为公共模版分离出去-->
    <title>优惠项</title>
</head>
<body>
<article class="page-container">
    <form action="<%=basePath%>disCountServlet" method="post" class="form form-horizontal" id="form-member-add">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">春季优惠额度：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="spring" name="spring">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">夏季优惠额度：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="summer" name="summer">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">秋季优惠额度：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="autom" name="autom">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">冬季优惠额度：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="winter" name="winter">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">工作日优惠额度：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="weekday" name="weekday">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">周六日优惠额度：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="weekend" name="weekend">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">往返票优惠额度：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="back-return" name="back-return">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">老人票优惠额度：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="elder" name="elder">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">儿童票优惠额度：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="kid" name="kid">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">发车时间：</label>
            <div class="formControls col-xs-4 col-sm-5" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="startTime" name="startTime">
            </div>
            <label class="form-label col-xs-1 col-sm-1">优惠额度：</label>
            <div class="formControls col-xs-4 col-sm-5" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="STDisCount" name="STDisCount">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">一次购票数：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="count" name="count">
            </div>
            <label class="form-label col-xs-1 col-sm-1">优惠额度：</label>
            <div class="formControls col-xs-4 col-sm-5" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="countDisCount" name="countDisCount">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">提前购票天数间隔：</label>
            <div class="formControls col-xs-8 col-sm-9" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="advance" name="advance">
            </div>
            <label class="form-label col-xs-1 col-sm-1">优惠额度：</label>
            <div class="formControls col-xs-4 col-sm-5" style="width:300px;">
                <input type="text" class="input-text" value="" placeholder="" id="advanceDisCount" name="advanceDisCount">
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;保存&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-member-add").validate({
            rules:{
                username:{
                    required:true,
                    minlength:2,
                    maxlength:16
                },
                sex:{
                    required:true,
                },
                mobile:{
                    required:true,
                    isMobile:true,
                },
                email:{
                    required:true,
                    email:true,
                },
                uploadfile:{
                    required:true,
                },

            },
            onkeyup:false,
            focusCleanup:true,
            success:"valid",
            submitHandler:function(form){
                //$(form).ajaxSubmit();
                var index = parent.layer.getFrameIndex(window.name);
                //parent.$('.btn-refresh').click();
                parent.layer.close(index);
            }
        });
    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>
