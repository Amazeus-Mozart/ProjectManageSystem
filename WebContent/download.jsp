<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<style type="text/css">
div#container{width:auto;background-color:#36648B; margin: -8px; height: 100px;}
div#header {text-align: left; margin-top: 0px; margin-left:13px; height: 70px; }

.headmenu{text-align: right; border-top: solid 1px #6CA6CD;}
.headmenu ul{ display: inline-block;margin-right: 20px; margin-top: 0px;margin-bottom: 0px;}
.headmenu li{ color:#CDC8B1; float: left; list-style: none;padding:5px; border:#CDC8B1; cursor: pointer;font-size: 16px;}
.headmenu li:HOVER{background-color: #36648B}
.headmenu li + li {margin-left: 20px }

.leftmenu {background-color:#6E7B8B; height:600px; width:13%; float:left;margin-left:0px;}
.leftmenu ul {list-style: none; }
.leftmenu li {text-align:center; color:#CDC8B1; font-size: 20px;letter-spacing: 5px;margin-bottom: 10px; margin-left: -40px;cursor: pointer;}
.leftmenu li:HOVER{background-color: #36648B;}

div#content {background-color:#EEEEEE; height:600px; width:85%; float:left;}

div#footer {background-color:#6CA6CD; clear:both; text-align:center;float: bottom;}

.row {margin-top: 10px; margin-left: 130px;}
</style>
</head>

<body>

<div id="container">

<div id="header">
<h2 style=" padding-top:15px; color:#F8F8FF; font-size:35px; font-family:宋体">IT项目管理系统</h2>

</div>
<div class="headmenu">
<ul >
	<li >管理已加入项目</li>
	<li>创建新项目</li>
	<li>修改资料</li>
	<li>退出</li>
</ul>
</div>

<div class="leftmenu">

<ul>
	<li>人员分工</li>
	<li>范围说明</li>
	<li>时间安排</li>
	<li>预计成本</li>
	<li>项目资源</li>
	<li><a href="upload.jsp">代码管理</a></li>
	<li>已有版本</li>
</ul>
</div>
<!-- 
<div class="col-xs-1"style="padding-right:0;">
              <p style="padding:5px;">共10页</p>
            </div>
            <div class="col-xs-4"style="padding-left:0;">
              <nav>
                <ul class="pagination" style="margin:0;">
                  <li>
                    <a href="#" aria-label="first">
                      <span aria-hidden="true" class="glyphicon glyphicon-step-backward"></span>
                    </a>
                  </li>
                  <li>
                    <a href="#" aria-label="Previous">
                      <span aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                  </li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li>
                    <a href="#" aria-label="Next">
                      <span aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                  </li>
                  <li>
                    <a href="#" aria-label="Previous">
                      <span aria-hidden="true" class="glyphicon glyphicon-step-forward"></span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
            <div class="col-xs-3">
              <form class="form-inline">
                <div class="form-group">
                  <label for="search">第</label>
                  <input type="text" class="form-control" id="search" name="search" style="width:3em;">
                  <label for="search">页</label>
                  <button class="btn btn-primary" type="submit">go</button>
                </div>
              </form>
            </div>
          </div>
 -->
 <!--       <div class="row">
            <div class="col-xs-12">
              <table class="table table-striped table-bordered">
                <tr>
                  <td style="background-color:#3fb4c6; color:#fff;width:15%;">版本编号</td>
                  <td style="background-color:#3fb4c6; color:#fff;width:21%;">上传者姓名</td>
                  <td style="background-color:#3fb4c6; color:#fff;width:26%;">版本名称</td>
                  <td style="background-color:#3fb4c6; color:#fff;width:23%;">上传时间</td>
                  <td style="background-color:#3fb4c6; color:#fff;">操作</td>
                </tr>
                <tr>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td><a href="check.html" class="check"><span class=" glyphicon glyphicon-search"></span>查看</a>/<a href="check.html" class="change"><span class="glyphicon glyphicon-pencil"></span>修改</a>/<a href="#" class="delete"><span class="glyphicon glyphicon-trash"></span>删除</a></td>
                </tr>
                <tr>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td><a href="check.html" class="check"><span class=" glyphicon glyphicon-search"></span>查看</a>/<a href="check.html" class="change"><span class="glyphicon glyphicon-pencil"></span>修改</a>/<a href="#" class="delete"><span class="glyphicon glyphicon-trash"></span>删除</a></td>
                </tr>
                <tr>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td><a href="check.html" class="check"><span class=" glyphicon glyphicon-search"></span>查看</a>/<a href="check.html" class="change"><span class="glyphicon glyphicon-pencil"></span>修改</a>/<a href="#" class="delete"><span class="glyphicon glyphicon-trash"></span>删除</a></td>
                </tr>
                <tr>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td>哇哇哇</td>
                  <td><a href="check.html" class="check"><span class=" glyphicon glyphicon-search"></span>查看</a>/<a href="check.html" class="change"><span class="glyphicon glyphicon-pencil"></span>修改</a>/<a href="#" class="delete"><span class="glyphicon glyphicon-trash"></span>删除</a></td>
                </tr>
                </table>
            </div>
          </div>

        </div>
      </div>
    </div>
    <div style="width:100%;height:100%;position:absolute;background-color:#000;top:0;left:0;z-index:2;opacity:0.3;display:none;" id="cover"></div>
    <div style="position:absolute;top:5em;width:100%;z-index:3;text-align:left;display:none;" id="pushWindow">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-4 col-xs-offset-4"style="background-color:#fff;padding:0;">
            <p style="background-color:#3fb4c6;margin:0;padding:5px;color:#fff;">删除询问</p>
            <div style="text-align:center;">
            <p style="margin:3em;">确定删除该文件吗？</p>
            <div style="text-align:right;background-color:#eee;padding:5px;">
            <button class="btn btn-default">确认</button>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default" id="cancel">取消</button>
          </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<script src="js/jquery-1.11.3.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script>
    window.onload=function(){
    $(".delete").click(function(){
      $("#cover").show();
      $("#pushWindow").show();
    });
    $("#cover").click(function(){
      $("#cover").hide();
      $("#pushWindow").hide();
    })
    $("#cancel").click(function(){
      $("#cover").hide();
      $("#pushWindow").hide();
    })
      if($("body").height() < window.innerHeight){
        $("#inn").css("height",window.innerHeight-50);
      }
      else {
        $("#inn").css("height",document.body.scrollHeight-50);
      }
    };
  </script>
 -->


<table>
	<tr>
		<td>版本编号</td>
		<td>上传者姓名</td>
		<td>版本名称</td>
		<td>上传时间</td>
	</tr>
</table>
<c:forEach var="list" items="${sessionScope.list}">
	<tr style="font-size: 13px;">
    
		<td align="left">${list.editionId}</td>
		<td align="left">${list.userId}</td>
		<td align="left">${list.editionId}</td>
		<td align="left">${list.personEditionTime}</td>
	</tr>

</c:forEach>

<div id="footer">  copyright by shaojidui</div>



</div>


</body>
</html>