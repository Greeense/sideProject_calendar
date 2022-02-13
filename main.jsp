<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
 /*  View는 가공된 데이터를 Controller를 통해 받아 표시함 */
 	int year;
	int month;

	Calendar now = Calendar.getInstance();
		
	year = now.get(Calendar.YEAR);
	month = now.get(Calendar.MONTH)+1;
	
	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연차 쓰기 좋은 날</title>
</head>
<style>
body {
	background-color : #F6F9FA;
	width:900px;
	margin:0 auto;
}

/*common */

#div_title {
	margin-top:20px;
	width:100%;
}
#div_title > p {
	padding-left:40px;
}

#div_subtitle {
	padding-left:40px;
	width:100%;	
	display:inline-block;
}

#div_subtitle_text {
	float:left;
}

/* 달력 */
#div_calendar {
	width:100%;
	margin :0px auto;
	border: 2px solid #808080;
	border-radius : 10px;
	display:block;
}
/*달력툴바*/
#div_calendar_toolbar {
	margin:50px 20%;
	width:100%;	
	display:inline-block;
}
#month_button_back {
	float:left;
}
#div_calendar_toolbar_text {
	float:left;
	display:inline-block;
}
#dropBox-year-item-selected {
	text-align:center;
	margin:0;
	padding:0;
	width:80px;
	border: 1px solid gray;
	border-radius:5px;
	background-color:#FFFFFF;
	font-size:30px;
	float:left;
}
#yearText {
	text-align:center;
	margin:0;
	padding:0;
	width:90px;
	font-size:30px;
	float:left;
}
#monthText {
	text-align:center;
	margin:0;
	padding:0;
	width:90px;
	font-size:30px;
	float:left;
}
#month_button_next {
	float:left;
}

#dropBox_year_itemList {
	float:left;
}
.dropBox-year-item {
	display:none;
}

#table_calendar_toolbar {
	width:100%;
}
#table_calendar {
	width:100%;
}
#table_calendar_toolbar>tr>th{
	padding:15px;
	font-size:16px;
	font-weight:bold;
	text-align:center;
}
#table_calendar>tr>td{
	font-size:16px;
	font-weight:bold;
	text-align:center;
	border : 1px solid black;
}



.Sat {
	color : #0070C0;
}
.Sun {
	color : #FF0000;	
}

.dropBox-year-item{
	width:90px;
	text-align:center;
	list-style:none;
}

.dropBox-year-item:hover {
	background-color : #166C4D;
	color : #FFFFFF;
	display:block;
}

.month_button {
	width:100px;
	background-color:#F6F9FA;
	border: 0px;
	font-weight:bold;
	font-size:40px;
	color:#5F5F5F;
}

.month_button:hover{
	color:#166C4D;
}

.div_btn_day {
	float:left;
}

.btn_day {
	width:40px;
	background-color : #FFFFFF;
	border : 1px solid gray;
	border-radius : 3px; 
}

.btn_day:hover {
	background-color : #166C4D;
	color : #FFFFFF;
}

</style>
<script>


</script>
<script src="mainCalendar.js" defer>
</script>
<body>
	<div id="div_title">
		<p><span style="color:#5F5F5F; font-weight:bold;">어떤 날 쉬면 알차게 쉴 수 있을까요?</span>
		<span style="font-weight:bolder; font-size:20pt; color:#166C4D;">연차쓰기 딱 좋은 날</span>
		<span style="color:#5F5F5F; font-weight:bold;">을 추천해드려요!</span></p>
	</div>
	
	<div id="div_subtitle">
		<div id="dropBox-year">
			<div id="div_subtitle_text">
				<span style="color:#5F5F5F; font-weight:bold; font-size:10pt">몇 개의 연차를 쓰실 계획이신가요?&nbsp;</span>
			</div>
			<div class="div_btn_day">
				<input type="button" class="btn_day" id="1day" name="1day" value="1일"></input>
				<input type="button" class="btn_day" id="2day" name="2day" value="2일"></input>
				<input type="button" class="btn_day" id="3day" name="3day" value="3일"></input>
				<input type="button" class="btn_day" id="4day" name="4day" value="4일"></input>
			</div>	
		</div>
	</div>
	
	<div id="div_calendar_toolbar">
		<input type="button" id="month_button_back" class="month_button" value='<'></input>
		<div id="div_calendar_toolbar_text">
			<div id="dropBox-year-item-selected"><%=year %></div>
			<span id="yearText" style="font-size:30px">년</span>
			<div id="dropBox-year-item-selected"><%=month %></div>
			<span id="monthText" style="font-size:30px">월</span>
		</div>
		<input type="button" id="month_button_next" class="month_button" value=">"></input>
		<ul id="dropBox-year-itemList">
			<li class="dropBox-year-item"> <%=(year) %> </li>
			<li class="dropBox-year-item"> <%=(year+1) %> </li>
			<li class="dropBox-year-item"> <%=(year+2) %> </li>
			<li class="dropBox-year-item"> <%=(year+3) %> </li>
			<li class="dropBox-year-item"> <%=(year+4) %> </li>
		</ul>		
		
	</div>
	
	<div id="div_calendar">
		<table id="table_calendar">
			<tr>
				<td class="Mon">MON</td>
				<td class="Tue">TUE</td>
				<td class="Wed">WED</td>
				<td class="Thu">THU</td>
				<td class="Fri">FRI</td>
				<td class="Sat">SAT</td>
				<td class="Sun">SUN</td>
			</tr>		
		</table>
	</div>	
</body>
</html>