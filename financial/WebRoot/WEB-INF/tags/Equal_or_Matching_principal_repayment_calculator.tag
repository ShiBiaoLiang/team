<%@ tag pageEncoding ="UTF-8" %>
<%@ tag import="java.text.DecimalFormat" %>
<%@ tag import="java.math.*" %>
<%@ attribute name="loan_" required="true" %>
<%@ attribute name="deadline_" required="true" %>
<%@ attribute name="year_rate_" required="true" %>
<%@ variable name-given="queryresult" scope="AT_END" %>
<%

//等额本金计算获取还款方式为等额本金的每月偿还利息      *       * 公式：每月应还利息=剩余本金×月利率=(贷款本金-已归还本金累计额)×月利率
//等额本息计算获取还款方式为等额本息的每月偿还利息      *       * 公式：每月偿还利息=贷款本金×月利率×〔(1+月利率)^还款月数-(1+月利率)^(还款月序号-1)〕÷〔(1+月利率)^还款月数-1〕
	
	//rates 利率
	//deadline 期限
	//corpus 本金
	//等额本金还款
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
	  result.append("<td>期数</td>"+"<td>还款本金</td>"+"<td>月供利息</td>"+"<td>本息合计</td>+"+"<td>本金余额</td>");
	  result.append("</tr>");
	  double corpusMon=0;//每月应还本金
	  double interestMon=0;//每月应还利息;
	  double corpus_left=corpus;//剩余本金
	  double corpusMon_sum_interestMon=0;//本息合计
	  double all_corpusMon_sum_interestMon=0;//本息总计
	  double all_corpusMon=0;//本金总计
	  double all_interestMon=0;//利息总计
	  corpusMon=corpus/deadline;
	   
	for(int i=1;i<=deadline;i++)
 { 
 	
 result.append("<tr>");
 result.append("<td>"+i+"</td>");
 result.append("<td>"+df2.format(corpusMon)+"</td>");
 //公式：每月应还利息=剩余本金×月利率=(贷款本金-已归还本金累计额)×月利率
 
 double interestMon1=corpus_left*rates/100;
 BigDecimal   b   =   new   BigDecimal( interestMon1);  
	interestMon   =   b.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue();  
 result.append("<td>"+interestMon+"</td>");
 corpusMon_sum_interestMon=corpusMon+interestMon;
 result.append("<td>"+df2.format(corpusMon_sum_interestMon)+"</td>");
 corpus_left=corpus_left-corpusMon;
 result.append("<td>"+df2.format(corpus_left)+"</td>");
 result.append("</tr>");
 all_corpusMon_sum_interestMon+=corpusMon_sum_interestMon;
 all_corpusMon+=corpusMon;
 all_interestMon+=interestMon;
 }
 
	result.append("<tr>");
	result.append("<td>总计</td>");
	result.append("<td>"+df2.format(all_corpusMon)+"</td>");
	result.append("<td>"+df2.format(all_interestMon)+"</td>");
	result.append("<td>"+df2.format(all_corpusMon_sum_interestMon)+"</td>");
	result.append("<td>---</td>");
	result.append("</tr>");
	result.append("</table>");
//	out.print(result);
	jspContext.setAttribute("queryresult",new String(result));
	}
	catch(Exception e)
	{
	System.out.print("发生错误");
	}
	
%>
