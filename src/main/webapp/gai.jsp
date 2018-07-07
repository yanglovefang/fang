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
//<input type="text" name="condseq" style="width: 114px;" />(请输入一个1-100之间的数字) /(^0$)|(^100$)|(^\d{1,2}$/
		//=/(^[1-9][0-9]$|^[0-9]$|^100$)/  /^((?!0)\d{1,2}|100)$/
  function test(num)  
 {  
  var reg = /(^[1-9][0-9]$|^[0-9]$|^100$)/;  
  if(!num.match(reg)){  
   return false;  
  }else{  
   return true;  
  }  
 } 
function he() {
	var arr = $("form").serialize();
	$.ajax({
		success:function(data){
			location.href="<%=request.getContextPath() %>/cityList";
		},
		url:"<%=request.getContextPath() %>/saveCity",
		data:arr,
		type:"post",
		dataType:"text",
		async:false,
		error:function(response){
			alert("error");
			}
	});
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
			<input type="hidden" name="cid" value="${cc.cid}">
			<input type="text" name="wen" onkeyup="value=test(value)?value:''" value="${cc.wen}">(请输入一个1-100之间的数字)
		</td>
	</tr>
	<tr>
		<td>
			经济富裕度:
		</td>
		<td>
			<input type="text" name="jingji"  onkeyup="value=test(value)?value:''" value="${cc.jingji}">(请输入一个1-100之间的数字)
		</td>
	</tr>
	<tr>
		<td>
			环境优美度:
		</td>
		<td>
			<input type="text" name="huan" onkeyup="value=test(value)?value:''" value="${cc.huan}">(请输入一个1-100之间的数字)
		</td>
	</tr>
	<tr>
		<td>
			资源承载度:
		</td>
		<td>
			<input type="text" name="zi" onkeyup="value=test(value)?value:''" value="${cc.zi}">(请输入一个1-100之间的数字)
		</td>
	</tr>
	<tr>
		<td>
			生活便宜度:
		</td>
		<td>
			<input type="text" name="sheng" onkeyup="value=test(value)?value:''" value="${cc.sheng}">(请输入一个1-100之间的数字)
		</td>
	</tr>
	<tr>
		<td>
			公共安全度:
		</td>
		<td>
			<input type="text" name="anquan" onkeyup="value=test(value)?value:''" value="${cc.anquan}">(请输入一个1-100之间的数字)
		</td>
	</tr>
</table>
</form>
<table>
	<tr>
		<td>
		<input type="button" value="更新" onclick="he()">
		</td>
	</tr>
</table>
</body>
</html>