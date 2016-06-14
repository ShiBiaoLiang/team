<%@ tag pageEncoding ="UTF-8" %>
<%@ tag import="java.math.*" %>
<%@ tag import="java.text.DecimalFormat" %>
<%@ attribute name="loan_" required="true" %>
<%@ attribute name="deadline_" required="true" %>
<%@ attribute name="year_rate_" required="true" %>
<%@ variable name-given="query" scope="AT_END" %>

<%

//等额本金计算获取还款方式为等额本金的每月偿还利息      *       * 公式：每月应还利息=剩余本金×月利率=(贷款本金-已归还本金累计额)×月利率
//等额本息计算获取还款方式为等额本息的每月偿还利息      *      
// 公式：每月偿还利息=贷款本金×月利率×〔(1+月利率)^还款月数-(1+月利率)^(还款月序号-1)〕÷〔(1+月利率)^还款月数-1〕
	
	//rates 利率
	//deadline 期限
	//corpus 本金
	//等额本息还款
try{
	double corpus=Double.parseDouble(loan_);//本金
  double deadline=Double.parseDouble(deadline_);//期限
  double year_rate=Double.parseDouble(year_rate_);//利率
  DecimalFormat df2  = new DecimalFormat("###.00");
  double rates=year_rate/12;
	StringBuffer result;
	result=new StringBuffer();
	result.append("<table border=1>");
	 result.append("<tr>");
	  result.append("<td>期数</td>"+"<td>本金余额</td>"+"<td>还款额</td>"+"<td>利息</td>"+"<td>本金</td>+"+"<td>剩余余额</td>");
	  result.append("</tr>");
	  double corpusMon1=corpus*(rates*Math.pow(1+rates,deadline)/(Math.pow(1+rates,deadline)-1));
	  BigDecimal   b   =   new   BigDecimal(corpusMon1);  
	double   corpusMon   =   b.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue();  
	  double interestMon=0;//每月应还利息;
	  double corpus_left=corpus;//剩余本金
	  double kk=0;
	for(int i=1;i<=deadline;i++)
 { 
 	//每月应还本金
 result.append("<tr>");
 result.append("<td>"+i+"</td>");
 result.append("<td>"+corpus_left+"</td>");
// 公式：每月偿还额=贷款本金×月利率×〔(1+月利率)^还款月数-(1+月利率)^(还款月序号-1)〕÷〔(1+月利率)^还款月数-1〕
	
  result.append("<td>"+corpusMon+"</td>");
 interestMon=corpus_left*rates;
	// b=new   BigDecimal(interestMon1);
	//interestMon   =   b.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue();  

 result.append("<td>"+df2.format(interestMon)+"</td>");
 
 kk=corpusMon-interestMon;
  result.append("<td>"+df2.format(kk)+"</td>");
  corpus_left=corpus_left-kk;
  if(corpus_left<0)
  {
  result.append("<td>--</td>");
  }
  
 else result.append("<td>"+df2.format(corpus_left)+"</td>");
 result.append("</tr>");
 
 }
 
	result.append("</table>");
//	out.print(result);
	jspContext.setAttribute("query",new String(result));
	}
	catch(Exception e)
	{
	System.out.print("发生错误");
	}
	
%>
