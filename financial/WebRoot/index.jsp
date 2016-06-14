<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  

</head>
  
    <base href="<%=basePath%>">
   
    <title>My JSP 'index.jsp' starting page</title>
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
	<nav class="navbar navbar-default" style=" margin-bottom: 0px;">
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
			<a class="navbar-brand" href="#">金融工具</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			    <li><a href="#">首页</a>
			    </li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">计算器 <span class="caret"></span> </a>
					<ul class="dropdown-menu">
						<li><a href="Currency_exchange_calculator.jsp">货币兑换计算器</a>
						<li role="separator" class="divider"></li>
						
						<li><a href="Loan_calculator.jsp">贷款计算器</a>
						<li role="separator" class="divider"></li>
						
						<li><a href="Compound_interest_calculator.jsp">复利计算器</a>
						<li role="separator" class="divider"></li>
						
						<li><a href="MyJsp.jsp">投资回报率计算器</a>
						<li role="separator" class="divider"></li>
						
						<li><a href="individual_income_tax_calculator.jsp">个人所得税计算器</a>
						<li role="separator" class="divider"></li>
						
					<!--  	<li><a href="Equal_investment_calculator.jsp">等额投资计算器</a>
                        <li role="separator" class="divider"></li>
						
						<li><a href="Bone_investment_calculator.jsp">股票投资计算器</a></li>-->
					</ul>
				</li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">  
	 <img src="img/background_1.jpg"height="100%" width="100%"></img> 
</div> 
  </body>
</html>
