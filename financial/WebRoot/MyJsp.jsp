<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="invest"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta name=“viewport” content=“width=device-width,initial-scale=1″>
<!-- 引入 Bootstrap -->

<link href="./css/mycss.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="css/js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery-1.11.3/jquery.min.js"></script>
<link rel="stylesheet" href="css/css/bootstrap.min.css" type="text/css"></link></head>

<body>
<nav class="navbar navbar-default"  style=" margin-bottom: 0px;">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				 <span class="icon-bar"></span> 
				 <span class="icon-bar"></span> 
				 <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="Compound_interest_calculator.jsp">投资回报率</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			    <li><a href="index.jsp">首页</a>
			    </li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<center><!--  <img src="img/Currency_exchange_2.jpg" >-->
	</center>
	<div align="center" style="margin-top: 100px; border-width: 2px; border-style: solid; margin-left: 100px; margin-right: 100px;">
  		<div class="input-group input-group-lg">
   	
   	</div>
	<form action="" class="form-horizontal" id="content">
	<table class="table">
	<tr>
	<td><h1>欢迎使用投资回报率计算器</h1></td>
	</tr>
<tr>
   <td> <label for="inputtext3 control-label">年利润</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" name="loan">(不包括投资总额)</td>
</tr>
  <tr>
   <td> <label for="inputtext3 control-label">总投资</label></td>
    <td> <input type="text" class="control" id="exampleInputPassword2" name="deadline">年</td>
  </tr>
   <tr>
   <td> <label for="inputtext3 control-label">结果</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" name="year_rate"></td>
</tr>
 <tr>
 <td  colspan="2" align="center">
  <button type="submit" class="btn btn-default">开始计算</button>
  <button type="reset" class="btn btn-default">重新计算</button>
  </td>
   </tr>
   </table>
</form>

	<%
		String a = request.getParameter("profit");
		String b = request.getParameter("sum");
		if (a == null || b == null) {
			a = "";
			b = "";
		}
	%>

	
</body>
</html>
