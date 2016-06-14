<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'individual_income_tax_calculator.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link rel="stylesheet" href="prototype/bootstrap/css/bootstrap.min.css" type="text/css"></link>
  <script type="text/javascript" src="prototype/jf/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="prototype/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="prototype/css/common.css" type="text/css"></link>  
 
 
 </head>
 
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
			<a class="navbar-brand" href="Compound_interest_calculator.jsp">个人所得税</a>
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
	<form action="indi_Income_result.jsp" class="form-horizontal" id="content">
	<table class="table">
	<tr>
	<td><h1></h1></td>
	</tr>
	<tr><td><label for="inputtext3 control-label">收入类型</label></td>
<td><select class="form-control" name="incomeType">
  			<option value="1">工资、薪金所得</option>
            <option value="2">个体工商户生产、经营所得</option>
            <option value="3">对企事业单位的承包经营</option>
            <option value="4">劳务报酬所得</option>
            <option value="5">稿酬所得</option>
            <option value="6">特需权使用费所得</option>
            <option value="7">财产租赁所得</option>
            <option value="8">财产转让所得</option>
            <option value="9">利息、股息、红利所得</option>
            <option value="10">偶然所得</option>
</select></td>
<td><a href="http://finance.21cn.com/news/cjyw/2011/07/01/8505773.shtml"/>新《中华人民共和国个人所得税法》</td>
</tr>
<tr>
   <td> <label for="inputtext3 control-label">收入总额:</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" name="income">元</td>
</tr>
  <tr>
   <td> <label for="inputtext3 control-label">税前扣除的三险一金</label></td>
    <td> <input type="text" class="control" id="exampleInputPassword2" name="deadline" placeholder="各项社会保险费19%">元</td>
  </tr>
   <tr>
   <td> <label for="inputtext3 control-label">起征额</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" name="year_rate" placeholder="3500元，港澳台4500元">元</td>
</tr>
 <tr>
  <td><button type="submit" class="btn btn-default">开始计算</button></td>
  <td> <button type="reset" class="btn btn-default">重新计算</button></td>
   </tr>
   </table>
</form>
	
  </body>
</html>
