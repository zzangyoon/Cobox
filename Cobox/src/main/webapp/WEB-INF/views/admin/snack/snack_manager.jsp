<%@page import="com.koreait.cobox.model.domain.TopCategory"%>
<%@page import="com.koreait.cobox.model.domain.Snack"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<TopCategory> topList = (List)request.getAttribute("topList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../inc/header.jsp" %>
<title>Insert title here</title>
<style>
input[type=text]{
  width: 7%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
select{
  width: 15%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  margin-left: 20px;
  resize: vertical;
}

#category-area table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 24%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<script>
var subList = null;
$(function(){
	$($("select")[0]).change(function(){
		getSubList(this);
	});
});

function getSubList(obj) {
	//alert($(obj).val());
	
	$.ajax({
		url:"/admin/snack/sublist?topcategory_id="+$(obj).val(),
		type:"get",
		data:{
			topcategory_id:$(obj).val()
		},
		success:function(result){
			//alert(result);
			
			$("#category-area").html("");		
				var tag="<table width=\"25%\" border=\"1px\">";
				tag+="<tr>";
				tag+="<th>품목 목록</th>";
				tag+="</tr>";
				
				for(var i=0; i<result.length; i++){
				subList = result[i];
	
				tag+="<tr>";
				tag+="<td onClick=\"detail()\">"+subList.snack_name+"</td>";
				tag+="</tr>";				
			}
				tag+="</table>";
			$("#category-area").append(tag);
		}
	});
}

function detail(){
	alert();
}
</script>
</head>
<body>
<%@ include file="../inc/main_navi.jsp" %>
<h3>Snack 관리</h3>
<div class="container">
	<form>
		<input type="text" value="품목 구분">
		<select name="topcategory_id">
			<option>카테고리 선택</option>
			<%for(TopCategory topCategory : topList){%>
			<option value="<%=topCategory.getTopcategory_id() %>" ><%=topCategory.getName() %></option>
			<%} %>
		</select>
		<br><br>
	</form>
	
	<div id="category-area"></div>
	
</div>

</body>
</html>