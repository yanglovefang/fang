<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function save() {
		var sum = $(".ckx:checked").length;
		alert(sum);
		
		if(sum>0){
			$(".ckx").each(function() {
				alert(4);
			})
		}
	}
	function ren() {
		$.ajax({
			url:"ren",
			dataType:"text",
			type:"post",
			success:function(data){
				var o=data;
				var date_len = o.length;

				$("#t1").append("<c:forEach items="+${o}+" var='l'><tr><td>"++"</td><td>"+'${l.name}'+"</td></tr></c:forEach>");

			}
		});
	}
</script>
</head>
<body>
<table>
		<tr>
			<td><input type="checkbox" class="ckx" /></td>
			<td>呵呵</td>
			<td>尼玛</td>
		</tr>
		<tr>
			<td><input type="checkbox" class="ckx" /></td>
			<td>草的了</td>
			<td>妈蛋</td>
		</tr>
		<tr>
			<td colspan="3"><input type="button" value="提交" onclick="save()"></td>
		</tr>
	</table>
		<input type="button" value="查看订单详情" onclick="ren()">
	<table id="t1">
		
	</table>
</body>
</html>