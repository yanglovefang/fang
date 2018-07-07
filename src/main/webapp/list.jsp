<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript">
	function dan() {
		var huanjian=$("#huanjian").val();		
		location.href="cityList?huanjian="+huanjian;
	}
	function gaiquan() {
		location.href="quanList";
	}
	function gaifen() {
		var cks = document.getElementsByName("gai");
			for(var i = 0;i < cks.length;i++){
				if(cks[i].checked){
					var cid =cks[i].value;
				}
			}
			if((cid!="")&&(cid!=null)){
				location.href="gaifen?cid="+cid;
			}else{
				alert("请选择一座城市");
			}
		
	}
</script>
</head>
<body>
		<select name="huanjian" id="huanjian" value="${param.huanjian}">
		<option value="null" >请选择</option>
		<option value="wen"  <c:if test="${param.huanjian=='wen'}">selected</c:if>>社会文明度</option>
		<option value="jingji"  <c:if test="${param.huanjian=='jingji'}">selected</c:if>>经济富裕度</option>
		<option value="huan"  <c:if test="${param.huanjian=='huan'}">selected</c:if>>环境优美度</option>
		<option value="zi"  <c:if test="${param.huanjian=='zi'}">selected</c:if>>资源承载度</option>
		<option value="sheng"  <c:if test="${param.huanjian=='sheng'}">selected</c:if>>生活便宜度</option>
		<option value="anquan"  <c:if test="${param.huanjian=='anquan'}">selected</c:if>>公共安全度</option>
		</select>
	<input type="button" value="按单项排名查询" onclick="dan()">
	</form>
	<input type="button" value="权限设置" onclick="gaiquan()">
	<input type="button" value="修改城市得分" onclick="gaifen()">
	<table>
		<tr>
			<td></td>
			<td>排名</td>
			<td>城市</td>
			<td>社会文明度（权重${quan.wenq}）</td>
			<td>经济富裕度（权重${quan.jingjiq}）</td>
			<td>环境优美度（权重${quan.huanq}）</td>
			<td>资源承载度（权重${quan.ziq}）</td>
			<td>生活便宜度（权重${quan.shengq}）</td>
			<td>公共安全度（权重${quan.anquanq}）</td>
			<td>总分</td>
		</tr>
		<c:forEach items="${list}" var="c">
			<tr>
				<td><input type="checkbox" name="gai" value="${c.cid}"><input type="hidden" value="${c.cid}"></td>
				<td></td>
				<td>${c.cname}</td>
				<td>${c.wen}</td>
				<td>${c.jingji}</td>
				<td>${c.huan}</td>
				<td>${c.zi}</td>
				<td>${c.sheng}</td>
				<td>${c.anquan}</td>
				<td>${c.zong}</td>
			</tr>
		</c:forEach>
	</table>
	<script type="text/javascript">
$(function(){
    //$('table tr:not(:first)').remove();
     var len = $('table tr').length;
    for(var i = 1;i<len;i++){
        $('table tr:eq('+i+') td:eq(1)').text(i);
    }    
});
</script>
</body>
</html>