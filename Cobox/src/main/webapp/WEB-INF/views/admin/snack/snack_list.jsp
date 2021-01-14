<%@page import="com.koreait.cobox.model.domain.Snack"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Snack> snackList = (List)request.getAttribute("snackList");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../inc/header.jsp" %>
<style>
.btn{
	border:none;
	border-radius:4px;
	color: white;
	padding:14px 28px;
	font-size:16px;
	cursor:pointer;
	background-color:#2196F3;
}
.btn:hover{
	background-color:#0b7dda;
}
</style>
</head>
<body>
<%@ include file="../inc/main_navi.jsp" %>
<script>
$(function(){
	$("button").click(function(){
		location.href="/admin/snack/registform";
	});	
});
</script>
<h2>Snack List</h2>

<table>
  <tr>
    <th>No</th>
    <th>이미지</th>
    <th>카테고리</th>
    <th>스낵명</th>
    <th>가격</th>
    <th>수량</th>
  </tr>
  <%for(int i=0; i<snackList.size(); i++){ %>
  <%Snack snack = snackList.get(i); %>
  <tr>
    <td>1</td>
    <td><img src="/resources/data/snack/<%=snack.getSnack_id()%>.<%=snack.getFilename()%>" width="50px"></td>
    <td><%=snack.getTopCategory().getName() %></td>
    <td><%=snack.getSnack_name() %></td>
    <td><%=snack.getPrice() %></td>
    <td><%=snack.getAmount() %></td>
  </tr>
  <%} %>
  <tr>
  	<td colspan="6">
	    <button>스낵등록</button>
  	</td>
  </tr>
</table>

</body>
</html>