<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
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
			<a class="navbar-brand" href="Compound_interest_calculator.jsp">贷款计算</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			    <li><a href="index.jsp">首页</a>
			    </li>
				<!--  <li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">  <span class="caret"></span> </a>
					<ul class="dropdown-menu">
						<li><a href="Loan_calculator.jsp">等额本息还款/等额本金还款</a>
						<li role="separator" class="divider"></li>
						<li><a href="Matching_interest_repayment_calculator.jsp">等额递增还款/等额递减还款</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">按期付息按期还本</a>
						<li role="separator" class="divider"></li>
						<li><a href="#">本金计划</a>
					</ul>
				</li>-->
				
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
  </body>
  <body>    
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<!--  <img src="img/background_2.jpeg"height="100%" width="100%"></img>-->
</div> 



<!--  <ul id="nav">
<li><a href="Loan_calculator.jsp">等额本息还款/等额本金还款</a></li>
<li><a href="Matching_interest_repayment_calculator.jsp">等额递增还款/等额递减还款</a></li>
<li><a href="#">按期付息按期还本</a></li>
<li><a href="#">到期还本</a></li>
<li><a href="#">本金计划</a></li>
<li><a href="#">提前还款计算</a></li>
<li><a href="#">提前还款计算</a></li>
<li><a href="#">退出</a></li>
</ul>-->
</div>
<div id="jiemian">
<form action="" class="form-horizontal" id="content">
	<table class="table">
	<tr>
	<td><h1></h1></td>
	</tr>
<tr>
   <td> <label for="inputtext3 control-label">贷款金额(元):</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" name="loan"></td>
</tr>
  <tr>
   <td> <label for="inputtext3 control-label">贷款期限</label></td>
    <td> <input type="text" class="control" id="exampleInputPassword2" name="deadline">月</td>
  </tr>
   <tr>
   <td> <label for="inputtext3 control-label">年利率:</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" name="year_rate"></td>
</tr>
<tr><td><label for="inputtext3 control-label">还款方式</label></td>
<td><select class="form-control" name="choice">
  <option value="a">等额本息还款</option>
  <option value="b">等额本金还款</option>
</select></td>
</tr>
 <tr>
  <td><button type="submit" class="btn btn-default">开始计算</button></td>
  <td> <button type="reset" class="btn btn-default">重新计算</button></td>
   </tr>
   </table>
</form>

</div>
<%
	String loan=request.getParameter("loan");
	String deadline=request.getParameter("deadline");
	String year_rate=request.getParameter("year_rate");
	String choice=request.getParameter("choice");
	if(loan==null||deadline==null||year_rate==null||choice==null)
{
	loan="";
	deadline="";
	year_rate="";
	choice="";
}


if(loan.length()>0&&deadline.length()>0&&year_rate.length()>0){

	if(choice.equals("a"))
	{
   %> 
	<tags:Matching_interest_repayment_calculator deadline_="<%= deadline %>" year_rate_="<%= year_rate %>" loan_="<%= loan %>"></tags:Matching_interest_repayment_calculator>
	<%=query%>
   <%
   }
   else if(choice.equals("b"))
   {%> 
   <tags:Equal_or_Matching_principal_repayment_calculator deadline_="<%= deadline %>" year_rate_="<%= year_rate %>" loan_="<%= loan %>"></tags:Equal_or_Matching_principal_repayment_calculator>
	<%=queryresult %>
   <%} 
   else out.print("请重新选择");
   }
    %>
     
</body>
</html>
