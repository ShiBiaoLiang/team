<%@ tag pageEncoding="utf-8"%>
<%@ attribute name="profit" required="true"%>
<%@ attribute name="sum" required="true"%>

<%@ variable name-given="result" scope="AT_END"%>

<%
	try {
		double a = Double.parseDouble(profit);
		double b = Double.parseDouble(sum);
		double r = 0;
		r = a / b;

		jspContext.setAttribute("result", String.valueOf(r));
	} catch (Exception e) {
	//	jspContext.setAttribute("result", "发生异常：" + e);
	}
%>