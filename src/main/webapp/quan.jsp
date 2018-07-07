<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript">

	function pan(ll) {
		var reg = /^0.[0-9]$/;//匹配一个马上的0-9和小数点
		if(reg.test(ll) == true){
			alert("输入正确");
		}else{
			alert("输入错误");
		}		
	}
	function he() {
		var wenq = Number($("input[name=wenq]").val());
		var jingjiq =  Number($("input[name=jingjiq]").val());
		var huanq =  Number($("input[name=huanq]").val());
		var ziq =  Number($("input[name=ziq]").val());
		var shengq =  Number($("input[name=shengq]").val());
		var anquanq =  Number($("input[name=anquanq]").val());
		
		var i=wenq+jingjiq+huanq+ziq+anquanq+shengq;
		alert(i);
		 if(i==1){
			var arr = $("form").serialize();
			$.ajax({
				success:function(data){
					location.href="<%=request.getContextPath() %>/cityList";
				},
				url:"<%=request.getContextPath() %>/saveQuan",
				data:arr,
				type:"post",
				dataType:"text",
				async:false,
				error:function(response){
					alert("error");
					}
			});
		}else{
			console.log(45); 
			alert("权重之和不为1，请重新输入");
		} 
	}
</script>
</head>
<body>
<form>
<table>

	<tr>
		<td>
		社会文明度:	
		</td>
		<td>
			<input type="text" name="wenq" onblur="pan(this.value)" value="${quan.wenq}">
		</td>
	</tr>
	<tr>
		<td>
			经济富裕度:
		</td>
		<td>
			<input type="text" name="jingjiq"  onblur="pan(this.value)" value="${quan.jingjiq}">
		</td>
	</tr>
	<tr>
		<td>
			环境优美度:
		</td>
		<td>
			<input type="text" name="huanq" onblur="pan(this.value)" value="${quan.huanq}">
		</td>
	</tr>
	<tr>
		<td>
			资源承载度:
		</td>
		<td>
			<input type="text" name="ziq" onblur="pan(this.value)" value="${quan.ziq}">
		</td>
	</tr>
	<tr>
		<td>
			生活便宜度:
		</td>
		<td>
			<input type="text" name="shengq" onblur="pan(this.value)" value="${quan.shengq}">
		</td>
	</tr>
	<tr>
		<td>
			公共安全度:
		</td>
		<td>
			<input type="text" name="anquanq" onblur="pan(this.value)" value="${quan.anquanq}">
		</td>
	</tr>
</table>
</form>
<table>
	<tr>
		<td>
		<input type="button" value="保存权限" onclick="he()">
		</td>
	</tr>
</table>

</body>

</html>