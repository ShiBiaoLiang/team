<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Currency_exchange_calculator.jsp' starting page</title>
    
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
	<nav class="navbar navbar-default navbar-fixed-top" style=" margin-bottom: 0px;border-bottom-width: 1px;" >
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
			<a class="navbar-brand" href="Currency_exchange_calculator.jsp">货币兑换</a>
		</div>
		<%pageContext.include("Navigation_bar.jsp"); %>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<div class="jumbotron" style="margin-top: 50px; margin-bottom: 0px;border-bottom-width: 1px;background:url('img/Currency_exchange_5.jpeg');background-size: 100% 100%;" >
  
  <div class="jumbotron" style="margin-top:100px; margin-bottom: 100px; margin-left: 15%;margin-right: 15%;">
  <center><img src="img/Currency_exchange_2.jpg" style="margin-top: -10px;margin-bottom: 20px;" ></center>
  <table width="80%"height="50%" border="1" align="center" cellpadding="25">
  <tr align="center">
	    <td ><h3><strong>原始货币</strong></h3><br> 
	    <select size="10" id="dh_from">
	            <optgroup label="常用">
					<option value="AUD">AUD 澳元</option>
					<option value="CNY">CNY 中国人民币</option>
					<option value="EUR">EUR 欧元</option>
					<option value="GBP">GBP 英镑</option>
					<option value="HKD">HKD 港元</option>
					<option value="JPY">JPY 日元</option>
					<option value="KRW">KRW 韩元</option>
					<option value="TWD">TWD 台币</option>
					<option value="USD" selected="selected">USD 美元</option>
					<option value="AED">AED 阿拉伯联合酋长国迪拉姆</option>
				</optgroup>
				
				<!-- <optgroup label="其它">
					<option value="AED">AED 阿拉伯联合酋长国迪拉姆</option>
					<option value="AFN">AFN 阿富汗阿富汗尼</option>
					<option value="ALL">ALL 阿尔巴尼亚勒克</option>
					<option value="AMD">AMD 亚美尼亚德拉姆</option>
					<option value="ANG">ANG 荷兰盾</option>
					<option value="AOA">AOA 安哥拉宽扎</option>
					<option value="ARS">ARS 阿根廷比索</option>
					<option value="AWG">AWG 阿鲁巴或荷兰盾</option>
					<option value="AZN">AZN 阿塞拜疆新马纳特</option>
					<option value="BAM">BAM 波斯尼亚兑换马尔卡</option>
					<option value="BBD">BBD 巴巴多斯元</option>
					<option value="BDT">BDT 孟加拉国塔卡</option>
					<option value="BGN">BGN 保加利亚利瓦</option>
					<option value="BHD">BHD 巴林第纳尔</option>
					<option value="BIF">BIF 布隆迪法郎</option>
					<option value="BMD">BMD 百慕大元</option>
					<option value="BND">BND 文莱元</option>
					<option value="BOB">BOB 玻利维亚币</option>
					<option value="BRL">BRL 巴西雷亚尔</option>
					<option value="BSD">BSD 巴哈马元</option>
					<option value="BTN">BTN 不丹努尔特鲁姆</option>
					<option value="BWP">BWP 博茨瓦纳普拉</option>
					<option value="BYR">BYR 白俄罗斯卢布</option>
					<option value="BZD">BZD 伯利兹元</option>
					<option value="CAD">CAD 加拿大元</option>
					<option value="CDF">CDF 刚果法郎</option>
					<option value="CHF">CHF 瑞士法郎</option>
					<option value="CLP">CLP 智利披索</option>
					<option value="COP">COP 哥伦比亚比索</option>
					<option value="CRC">CRC 哥斯达黎加科朗</option>
					<option value="CUC">CUC 古巴可兑换比索</option>
					<option value="CUP">CUP 古巴比索</option>
					<option value="CVE">CVE 佛得角埃斯库多</option>
					<option value="CZK">CZK 捷克共和国克朗</option>
					<option value="DJF">DJF 吉布提法郎</option>
					<option value="DKK">DKK 丹麦克郎</option>
					<option value="DOP">DOP 多米尼加共和国比索</option>
					<option value="DZD">DZD 阿尔及利亚第纳尔</option>
					<option value="ECS">ECS 厄瓜多尔苏克雷</option>
					<option value="EGP">EGP 埃及镑</option>
					<option value="ERN">ERN 厄立特里亚纳克法</option>
					<option value="ETB">ETB 埃塞俄比亚比尔</option>
					<option value="FJD">FJD 斐济元</option>
					<option value="FKP">FKP 福克兰岛磅</option>
					<option value="GEL">GEL 格鲁吉亚拉里</option>
					<option value="GGP">GGP 格恩西岛磅</option>
					<option value="GHS">GHS 加纳塞地</option>
					<option value="GIP">GIP 直布罗陀镑</option>
					<option value="GMD">GMD 冈比亚达拉西</option>
					<option value="GNF">GNF 几内亚法郎</option>
					<option value="GTQ">GTQ 危地马拉格查尔</option>
					<option value="GYD">GYD 圭亚那元</option>
					<option value="HNL">HNL 洪都拉斯伦皮拉</option>
					<option value="HRK">HRK 克罗地亚库纳</option>
					<option value="HTG">HTG 海地古德</option>
					<option value="HUF">HUF 匈牙利福林</option>
					<option value="IDR">IDR 印尼卢比</option>
					<option value="ILS">ILS 以色列新谢克尔</option>
					<option value="IMP">IMP 马恩磅</option>
					<option value="INR">INR 印度卢比</option>
					<option value="IQD">IQD 伊拉克第纳尔</option>
					<option value="IRR">IRR 伊朗里尔斯</option>
					<option value="ISK">ISK 冰岛克朗</option>
					<option value="JEP">JEP 新泽西岛磅</option>
					<option value="JMD">JMD 牙买加元</option>
					<option value="JOD">JOD 约旦第纳尔</option>
					<option value="KES">KES 肯尼亚先令</option>
					<option value="KGS">KGS 吉尔吉斯斯坦索姆</option>
					<option value="KHR">KHR 柬埔寨瑞尔</option>
					<option value="KMF">KMF 科摩罗法郎</option>
					<option value="KPW">KPW 朝鲜圆</option>
					<option value="KWD">KWD 科威特第纳尔</option>
					<option value="KYD">KYD 开曼岛元</option>
					<option value="KZT">KZT 哈萨克斯坦坚戈</option>
					<option value="LAK">LAK 老挝或老挝基普</option>
					<option value="LBP">LBP 黎巴嫩镑</option>
					<option value="LKR">LKR 斯里兰卡卢比</option>
					<option value="LRD">LRD 利比里亚元</option>
					<option value="LSL">LSL 巴索托洛蒂</option>
					<option value="LTL">LTL 立陶宛立特</option>
					<option value="LVL">LVL 拉脱维亚拉特</option>
					<option value="LYD">LYD 利比亚第纳尔</option>
					<option value="MAD">MAD 摩洛哥迪拉姆</option>
					<option value="MDL">MDL 摩尔多瓦列伊</option>
					<option value="MGA">MGA 马达加斯加</option>
					<option value="MKD">MKD 马其顿代纳尔</option>
					<option value="MMK">MMK 缅甸缅元</option>
					<option value="MNT">MNT 蒙古图格里克</option>
					<option value="MOP">MOP 澳门币</option>
					<option value="MRO">MRO 毛里塔尼亚乌吉亚</option>
					<option value="MUR">MUR 毛里求斯卢比</option>
					<option value="MVR">MVR 马尔代夫拉菲亚</option>
					<option value="MWK">MWK 马拉维克瓦查</option>
					<option value="MXN">MXN 墨西哥比索</option>
					<option value="MYR">MYR 马来西亚林吉特</option>
					<option value="MZN">MZN 莫桑比克梅蒂卡尔</option>
					<option value="NAD">NAD 纳米比亚元</option>
					<option value="NGN">NGN 尼日利亚奈拉</option>
					<option value="NIO">NIO 尼加拉瓜科多巴</option>
					<option value="NOK">NOK 挪威克郎</option>
					<option value="NPR">NPR 尼泊尔卢比</option>
					<option value="NZD">NZD 纽西兰元</option>
					<option value="OMR">OMR 阿曼里亚尔</option>
					<option value="PAB">PAB 巴拿马巴波亚</option>
					<option value="PEN">PEN 秘鲁新索尔</option>
					<option value="PGK">PGK 巴布亚新几内亚基纳</option>
					<option value="PHP">PHP 菲律宾比索</option>
					<option value="PKR">PKR 巴基斯坦卢比</option>
					<option value="PLN">PLN 波兰兹罗提</option>
					<option value="PYG">PYG 巴拉圭瓜拉尼</option>
					<option value="QAR">QAR 卡塔尔里亚尔</option>
					<option value="RON">RON 罗马尼亚新雷</option>
					<option value="RSD">RSD 塞尔维亚第纳尔</option>
					<option value="RUB">RUB 俄罗斯卢布</option>
					<option value="RWF">RWF 卢旺达法郎</option>
					<option value="SAR">SAR 沙特阿拉伯里亚尔</option>
					<option value="SBD">SBD 所罗门群岛元</option>
					<option value="SCR">SCR 塞舌尔卢比</option>
					<option value="SDG">SDG 苏丹镑</option>
					<option value="SEK">SEK 瑞典克朗</option>
					<option value="SGD">SGD 新加坡元</option>
					<option value="SHP">SHP 圣圣赫勒拿镑</option>
					<option value="SIT">SIT 斯洛文尼亚托拉尔</option>
					<option value="SLL">SLL 塞拉利昂利昂</option>
					<option value="SOS">SOS 索马里先令</option>
					<option value="SPL">SPL Seborgan Luigino</option>
					<option value="SRD">SRD 苏里南美元</option>
					<option value="STD">STD 圣多美和普林西比多布猎</option>
					<option value="SVC">SVC 萨尔瓦多科郎</option>
					<option value="SYP">SYP 叙利亚镑</option>
					<option value="SZL">SZL 斯威士兰马兰吉尼</option>
					<option value="THB">THB 泰铢</option>
					<option value="TJS">TJS 塔吉克斯坦索莫尼</option>
					<option value="TMT">TMT 土库曼斯坦马纳特</option>
					<option value="TND">TND 突尼斯第纳尔</option>
					<option value="TOP">TOP 汤加潘加</option>
					<option value="TRY">TRY 土耳其的里拉</option>
					<option value="TTD">TTD 特立尼达和多巴哥元</option>
					<option value="TVD">TVD 图瓦卢美元</option>
					<option value="TZS">TZS 坦桑尼亚先令</option>
					<option value="UAH">UAH 乌克兰格里夫纳</option>
					<option value="UGX">UGX 乌干达先令</option>
					<option value="UYU">UYU 乌拉圭比索</option>
					<option value="UZS">UZS 乌兹别克斯坦苏姆</option>
					<option value="VEF">VEF 委内瑞拉博利瓦</option>
					<option value="VND">VND 越南盾</option>
					<option value="VUV">VUV 瓦努阿图瓦</option>
					<option value="WST">WST 萨摩亚塔拉</option>
					<option value="XAF">XAF 中非法郎</option>
					<option value="XCD">XCD 东加勒比元</option>
					<option value="XDR">XDR 国际货币基金组织特别提款权</option>
					<option value="XOF">XOF 西非法郎</option>
					<option value="XPF">XPF 太平洋法郎</option>
					<option value="YER">YER 也门里亚尔</option>
					<option value="ZAR">ZAR 南非兰特</option>
					<option value="ZMK">ZMK 赞比亚克瓦查</option>
					<option value="ZMW">ZMW 赞比亚克瓦查</option>
				</optgroup>
				
				<optgroup label="金属">
					<option value="XAG">XAG 银价盎司</option>
					<option value="XAU">XAU 金价盎司</option>
					<option value="XCP">XCP 铜价磅</option>
					<option value="XPD">XPD 钯价盎司</option>
					<option value="XPT">XPT 铂价盎司</option>
				</optgroup> 
				-->
				
		</select>
		</td>
		
		<td ><h3><strong>目标货币</strong></h3><br>
		<select size="10" id="dh_to">
		        <optgroup label="常用">
					<option value="AUD">AUD 澳元</option>
					<option value="CNY" selected="selected">CNY 中国人民币</option>
					<option value="EUR">EUR 欧元</option>
					<option value="GBP">GBP 英镑</option>
					<option value="HKD">HKD 港元</option>
					<option value="JPY">JPY 日元</option>
					<option value="KRW">KRW 韩元</option>
					<option value="TWD">TWD 台币</option>
					<option value="USD">USD 美元</option>
					<option value="AED">AED 阿拉伯联合酋长国迪拉姆</option>
				</optgroup>
				
				<!--<optgroup label="其它">
					<option value="AED">AED 阿拉伯联合酋长国迪拉姆</option>
					<option value="AFN">AFN 阿富汗阿富汗尼</option>
					<option value="ALL">ALL 阿尔巴尼亚勒克</option>
					<option value="AMD">AMD 亚美尼亚德拉姆</option>
					<option value="ANG">ANG 荷兰盾</option>
					<option value="AOA">AOA 安哥拉宽扎</option>
					<option value="ARS">ARS 阿根廷比索</option>
					<option value="AWG">AWG 阿鲁巴或荷兰盾</option>
					<option value="AZN">AZN 阿塞拜疆新马纳特</option>
					<option value="BAM">BAM 波斯尼亚兑换马尔卡</option>
					<option value="BBD">BBD 巴巴多斯元</option>
					<option value="BDT">BDT 孟加拉国塔卡</option>
					<option value="BGN">BGN 保加利亚利瓦</option>
					<option value="BHD">BHD 巴林第纳尔</option>
					<option value="BIF">BIF 布隆迪法郎</option>
					<option value="BMD">BMD 百慕大元</option>
					<option value="BND">BND 文莱元</option>
					<option value="BOB">BOB 玻利维亚币</option>
					<option value="BRL">BRL 巴西雷亚尔</option>
					<option value="BSD">BSD 巴哈马元</option>
					<option value="BTN">BTN 不丹努尔特鲁姆</option>
					<option value="BWP">BWP 博茨瓦纳普拉</option>
					<option value="BYR">BYR 白俄罗斯卢布</option>
					<option value="BZD">BZD 伯利兹元</option>
					<option value="CAD">CAD 加拿大元</option>
					<option value="CDF">CDF 刚果法郎</option>
					<option value="CHF">CHF 瑞士法郎</option>
					<option value="CLP">CLP 智利披索</option>
					<option value="COP">COP 哥伦比亚比索</option>
					<option value="CRC">CRC 哥斯达黎加科朗</option>
					<option value="CUC">CUC 古巴可兑换比索</option>
					<option value="CUP">CUP 古巴比索</option>
					<option value="CVE">CVE 佛得角埃斯库多</option>
					<option value="CZK">CZK 捷克共和国克朗</option>
					<option value="DJF">DJF 吉布提法郎</option>
					<option value="DKK">DKK 丹麦克郎</option>
					<option value="DOP">DOP 多米尼加共和国比索</option>
					<option value="DZD">DZD 阿尔及利亚第纳尔</option>
					<option value="ECS">ECS 厄瓜多尔苏克雷</option>
					<option value="EGP">EGP 埃及镑</option>
					<option value="ERN">ERN 厄立特里亚纳克法</option>
					<option value="ETB">ETB 埃塞俄比亚比尔</option>
					<option value="FJD">FJD 斐济元</option>
					<option value="FKP">FKP 福克兰岛磅</option>
					<option value="GEL">GEL 格鲁吉亚拉里</option>
					<option value="GGP">GGP 格恩西岛磅</option>
					<option value="GHS">GHS 加纳塞地</option>
					<option value="GIP">GIP 直布罗陀镑</option>
					<option value="GMD">GMD 冈比亚达拉西</option>
					<option value="GNF">GNF 几内亚法郎</option>
					<option value="GTQ">GTQ 危地马拉格查尔</option>
					<option value="GYD">GYD 圭亚那元</option>
					<option value="HNL">HNL 洪都拉斯伦皮拉</option>
					<option value="HRK">HRK 克罗地亚库纳</option>
					<option value="HTG">HTG 海地古德</option>
					<option value="HUF">HUF 匈牙利福林</option>
					<option value="IDR">IDR 印尼卢比</option>
					<option value="ILS">ILS 以色列新谢克尔</option>
					<option value="IMP">IMP 马恩磅</option>
					<option value="INR">INR 印度卢比</option>
					<option value="IQD">IQD 伊拉克第纳尔</option>
					<option value="IRR">IRR 伊朗里尔斯</option>
					<option value="ISK">ISK 冰岛克朗</option>
					<option value="JEP">JEP 新泽西岛磅</option>
					<option value="JMD">JMD 牙买加元</option>
					<option value="JOD">JOD 约旦第纳尔</option>
					<option value="KES">KES 肯尼亚先令</option>
					<option value="KGS">KGS 吉尔吉斯斯坦索姆</option>
					<option value="KHR">KHR 柬埔寨瑞尔</option>
					<option value="KMF">KMF 科摩罗法郎</option>
					<option value="KPW">KPW 朝鲜圆</option>
					<option value="KWD">KWD 科威特第纳尔</option>
					<option value="KYD">KYD 开曼岛元</option>
					<option value="KZT">KZT 哈萨克斯坦坚戈</option>
					<option value="LAK">LAK 老挝或老挝基普</option>
					<option value="LBP">LBP 黎巴嫩镑</option>
					<option value="LKR">LKR 斯里兰卡卢比</option>
					<option value="LRD">LRD 利比里亚元</option>
					<option value="LSL">LSL 巴索托洛蒂</option>
					<option value="LTL">LTL 立陶宛立特</option>
					<option value="LVL">LVL 拉脱维亚拉特</option>
					<option value="LYD">LYD 利比亚第纳尔</option>
					<option value="MAD">MAD 摩洛哥迪拉姆</option>
					<option value="MDL">MDL 摩尔多瓦列伊</option>
					<option value="MGA">MGA 马达加斯加</option>
					<option value="MKD">MKD 马其顿代纳尔</option>
					<option value="MMK">MMK 缅甸缅元</option>
					<option value="MNT">MNT 蒙古图格里克</option>
					<option value="MOP">MOP 澳门币</option>
					<option value="MRO">MRO 毛里塔尼亚乌吉亚</option>
					<option value="MUR">MUR 毛里求斯卢比</option>
					<option value="MVR">MVR 马尔代夫拉菲亚</option>
					<option value="MWK">MWK 马拉维克瓦查</option>
					<option value="MXN">MXN 墨西哥比索</option>
					<option value="MYR">MYR 马来西亚林吉特</option>
					<option value="MZN">MZN 莫桑比克梅蒂卡尔</option>
					<option value="NAD">NAD 纳米比亚元</option>
					<option value="NGN">NGN 尼日利亚奈拉</option>
					<option value="NIO">NIO 尼加拉瓜科多巴</option>
					<option value="NOK">NOK 挪威克郎</option>
					<option value="NPR">NPR 尼泊尔卢比</option>
					<option value="NZD">NZD 纽西兰元</option>
					<option value="OMR">OMR 阿曼里亚尔</option>
					<option value="PAB">PAB 巴拿马巴波亚</option>
					<option value="PEN">PEN 秘鲁新索尔</option>
					<option value="PGK">PGK 巴布亚新几内亚基纳</option>
					<option value="PHP">PHP 菲律宾比索</option>
					<option value="PKR">PKR 巴基斯坦卢比</option>
					<option value="PLN">PLN 波兰兹罗提</option>
					<option value="PYG">PYG 巴拉圭瓜拉尼</option>
					<option value="QAR">QAR 卡塔尔里亚尔</option>
					<option value="RON">RON 罗马尼亚新雷</option>
					<option value="RSD">RSD 塞尔维亚第纳尔</option>
					<option value="RUB">RUB 俄罗斯卢布</option>
					<option value="RWF">RWF 卢旺达法郎</option>
					<option value="SAR">SAR 沙特阿拉伯里亚尔</option>
					<option value="SBD">SBD 所罗门群岛元</option>
					<option value="SCR">SCR 塞舌尔卢比</option>
					<option value="SDG">SDG 苏丹镑</option>
					<option value="SEK">SEK 瑞典克朗</option>
					<option value="SGD">SGD 新加坡元</option>
					<option value="SHP">SHP 圣圣赫勒拿镑</option>
					<option value="SIT">SIT 斯洛文尼亚托拉尔</option>
					<option value="SLL">SLL 塞拉利昂利昂</option>
					<option value="SOS">SOS 索马里先令</option>
					<option value="SPL">SPL Seborgan Luigino</option>
					<option value="SRD">SRD 苏里南美元</option>
					<option value="STD">STD 圣多美和普林西比多布猎</option>
					<option value="SVC">SVC 萨尔瓦多科郎</option>
					<option value="SYP">SYP 叙利亚镑</option>
					<option value="SZL">SZL 斯威士兰马兰吉尼</option>
					<option value="THB">THB 泰铢</option>
					<option value="TJS">TJS 塔吉克斯坦索莫尼</option>
					<option value="TMT">TMT 土库曼斯坦马纳特</option>
					<option value="TND">TND 突尼斯第纳尔</option>
					<option value="TOP">TOP 汤加潘加</option>
					<option value="TRY">TRY 土耳其的里拉</option>
					<option value="TTD">TTD 特立尼达和多巴哥元</option>
					<option value="TVD">TVD 图瓦卢美元</option>
					<option value="TZS">TZS 坦桑尼亚先令</option>
					<option value="UAH">UAH 乌克兰格里夫纳</option>
					<option value="UGX">UGX 乌干达先令</option>
					<option value="UYU">UYU 乌拉圭比索</option>
					<option value="UZS">UZS 乌兹别克斯坦苏姆</option>
					<option value="VEF">VEF 委内瑞拉博利瓦</option>
					<option value="VND">VND 越南盾</option>
					<option value="VUV">VUV 瓦努阿图瓦</option>
					<option value="WST">WST 萨摩亚塔拉</option>
					<option value="XAF">XAF 中非法郎</option>
					<option value="XCD">XCD 东加勒比元</option>
					<option value="XDR">XDR 国际货币基金组织特别提款权</option>
					<option value="XOF">XOF 西非法郎</option>
					<option value="XPF">XPF 太平洋法郎</option>
					<option value="YER">YER 也门里亚尔</option>
					<option value="ZAR">ZAR 南非兰特</option>
					<option value="ZMK">ZMK 赞比亚克瓦查</option>
					<option value="ZMW">ZMW 赞比亚克瓦查</option>
				</optgroup>
				
				<optgroup label="金属">
					<option value="XAG">XAG 银价盎司</option>
					<option value="XAU">XAU 金价盎司</option>
					<option value="XCP">XCP 铜价磅</option>
					<option value="XPD">XPD 钯价盎司</option>
					<option value="XPT">XPT 铂价盎司</option>
				</optgroup>-->
		    </select>
		</td>
		</tr>
		<tr>
		<%=request.getParameterValues("dh_to") %>
	    <td align="center" colspan="3"> 
	         <input type="text" id="currency_1"  style="width:25%;height:30px;" placeholder="请输入兑换金额"/> 
	         <button type="submit"  onclick="document.getElementById('currency_2').value=document.getElementById('currency_1').value"  class="btn btn-default" style="margin-left: 15%;margin-right: 15%;">登录</button>
	         <input type="text"  readonly=""  id="currency_2" style="width:25%;height:30px;" placeholder="兑换结果"/> 
		</td>
	</tr>
	</table>
	</div>
	</div>
</body>
</html>
