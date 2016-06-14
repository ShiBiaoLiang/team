<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <base href="<%=basePath%>">
    
    <title>My JSP 'Compound_interest_calculator.jsp' starting page</title>
    
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
			<a class="navbar-brand" href="Compound_interest_calculator.jsp">复利存款</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			    <li><a href="index.jsp">首页</a>
			    </li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">复利计算器 <span class="caret"></span> </a>
					<ul class="dropdown-menu">
						<li><a href="Compound_interest_calculator.jsp">复利计算</a>
						<li role="separator" class="divider"></li>
						<li><a href="Compound_interest_calculator_1.jsp">单利计算</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="Compound_interest_calculator_2.jsp">求初值</a>
						<li role="separator" class="divider"></li>
						<li><a href="Compound_interest_calculator_3.jsp">求年限</a>
						<li role="separator" class="divider"></li>
						<li><a href="Compound_interest_calculator_4.jsp">求利率</a>
					</ul>
				</li>
			
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
  </body>
  <body>    
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="img/background_2.jpeg"height="100%" width="100%"></img>
</div> 
<body>
<form action="ComInterest4.jsp" class="form-horizontal" id="content">
	<table class="table">
	<tr>
	<td><h1></h1></td>
	</tr>
<tr>
   <td> <label for="inputtext3 control-label">本金:</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" name="loan"></td>
</tr>
  <tr>
   <td> <label for="inputtext3 control-label">预期金额:</label></td>
    <td> <input type="text" class="control" id="exampleInputPassword2" name="amount"></td>
  </tr>
   <tr>
   <td> <label for="inputtext3 control-label">年限:</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" name="deadline"></td>
</tr>

 <tr>
  <td><button type="submit" class="btn btn-default">开始计算</button></td>
  <td> <button type="reset" class="btn btn-default">重新计算</button></td>
   </tr>
   </table>
</form>
</body>
</html>
