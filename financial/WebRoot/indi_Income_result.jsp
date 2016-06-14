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
     <%
         int iType=Integer.parseInt(request.getParameter("incomeType"));//收入类型
        // out.print(iType);
         Double income=Double.parseDouble(request.getParameter("income"));//收入额
        // out.print(income);
        String yr=request.getParameter("year_rate");  //起征税
      %>
  <%
        double tax=0;    //税
        tax=income*(1-0.19)-3500;
        if(tax>0&&tax<1500)   tax=tax*0.03-0;
        if(tax>=1500&&tax<4500)   tax=tax*0.1-105;
        if(tax>=4500&&tax<9000)    tax=tax*0.2-555;
        if(tax>=9000&&tax<35000)   tax=tax*0.25-1005;
        if(tax>=35000&&tax<55000)   tax=tax*0.3-2755;
        if(tax>=55000&&tax<80000)    tax=tax*0.35-5505;
        if(tax>=80000)     tax=tax*0.45-13505;
        
    
 %>
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
	<form action="" class="form-horizontal" id="content">
	<table class="table">
	<tr>
	<td><h1></h1></td>
	</tr>
	<tr><td><label for="inputtext3 control-label">收入类型</label></td>
<td><select class="form-control" >
  			<option
  			<%if(iType==1) {%>
  			    selected=""
  			    <%} %>
  			>工资、薪金所得</option>
            <option
            <%if(iType==2) {%>
  			    selected=""
  			    <%} %>
            >个体工商户生产、经营所得</option>
            <option 
            <%if(iType==3) {%>
  			    selected=""
  			    <%} %>
            >对企事业单位的承包经营</option>
            <option 
            <%if(iType==4) {%>
  			    selected=""
  			    <%} %>
            >劳务报酬所得</option>
            <option
            <%if(iType==5) {%>
  			    selected=""
  			    <%} %>
            >稿酬所得</option>
            <option 
            <%if(iType==6) {%>
  			    selected=""
  			    <%} %> 
            >特需权使用费所得</option>
            <option 
            <%if(iType==7) {%>
  			    selected=""
  			    <%} %>
            >财产租赁所得</option>
            <option 
            <%if(iType==8) {%>
  			    selected=""
  			    <%} %>
            >财产转让所得</option>
            <option 
            <%if(iType==9) {%>
  			    selected=""
  			    <%} %>
            >利息、股息、红利所得</option>
            <option 
            <%if(iType==10){%>
  			    selected=""
  			    <%} %>
            >偶然所得</option>
</select></td>
<td><a href="http://finance.21cn.com/news/cjyw/2011/07/01/8505773.shtml"/>新《中华人民共和国个人所得税法》</td>
</tr>
<tr>
   <td> <label for="inputtext3 control-label">收入总额:</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" value="<%= income%>">元</td>
</tr>
  <tr>
   <td> <label for="inputtext3 control-label">税前扣除的三险一金</label></td>
    <td> <input type="text" class="control" id="exampleInputPassword2" name="deadline" value="<%=income*0.19%>">元</td>
  </tr>
   <tr>
   <td> <label for="inputtext3 control-label">起征额</label></td>
   <td> <input type="text" class="control" id="exampleInputPassword2" name="year_rate" 
    <%if(yr==""){ %>
   value="3500"
   <%} %>
   
    <%if(yr.equals("3500")){ %>
   value="3500"
   <%} %>
   
   <%if(yr.equals("4500")){ %>
   value="4500"
   <%} %>
   >元</td>
</tr>
<tr>
   <td> <label for="inputtext3 control-label">个人税</label></td>
    <td> <input type="text" class="control" value="<%=tax%>">元</td>
</tr>
<tr>
   <td> <label for="inputtext3 control-label">税后个人所得</label></td>
    <td> <input type="text" class="control" value="<%=income-tax-income*0.19%>">元</td>
</tr>
  

 <tr>
 <center>
  <td colspan="2"><a href="individual_income_tax_calculator.jsp">返回</a></td>
  </center>
   </tr>
   </table>
</form>
 <%
     out.println("养老保险8%  ");
     out.println("医疗保险2%  ");
     out.println("失业保险1%  ");
     out.println("住房公积金8% ");
  %>
  </body>
</html>
