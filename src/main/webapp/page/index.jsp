<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<meta charset="utf-8">
	<title>新闻管理系统</title>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	%>
<style type="text/css">
	
	nav a{
		text-decoration:none;
		color:#5e2d00;
		font-size: 22px;
		text-indent:1em;
		display:inline-block;
	}
	a{
		text-decoration: none;
	}
	*{   margin: 0px;
		padding: 0px;
	}
	body{
		font-family: "Micosoft Yahei","微软雅黑";
		text-align:center;
		background-image: url(http://localhost:8080/images/2015004.jpg);
	
	}
	h2{
		line-height: 2em;
	}
	h2,nav,dl{
		width:750px;
		margin:10px auto;
	}
	nav hr{
		width:750px;
		border: 0px;
		border-bottom: solid #5e2d00 3px;
	}
	nav a:nth-of-type(1){
		text-indent:0;
	}
	a:hover{
		color:#f03;
		text-decoration: underline;
	}
	dl dd{
		text-align:left;
		margin-left:40px;
	}
	dd:before{
		content:url(http://localhost:8080/images/11.png);
	}
	dd:nth-child(odd){
		color:#bda793;
	}
	dl{
		display: none;
		
	}
	:target{
		display:block;
	}
	
	
	dd:hover{
		color: red;
	}
	.d2:hover{
		color: yellow;
	}
	.w1{
		display: block;
		width: 100px;
		height: 50px;
		background:blue;
		color:white;
		text-align: center;
		line-height: 2.5em;
		text-decoration: none;
		float: left;
	}


</style>
<script src="http://localhost:8080/jq/jquery.min.js"></script>
	<script>
		$(function(){
			$("#o5").click(function(){
				$.ajax({
					url:"http://localhost:8080/xw/addxw",
					data:{title:$("#o1").val(),main:$("#o2").val(),name1:$("#o3").val(),time:$("#o4").val()},
					success:function(data){
						if(data=="Y"){
							alert("添加成功");
							window.location.href = "http://localhost:8080/xw/All";
						}else if(data=="N"){
							alert("添加失败");
						}

					},
					dataType:"text"
				})
			});
		});
		$(function(){
			$("#p2").click(function(){
				$.ajax({
					url:"http://localhost:8080/xw/Delxw",
					data:{name1:$("#p1").val()},
					success:function(data){
						if(data=="Y"){
							alert("删除成功");
							window.location.href = "http://localhost:8080/xw/All";
						}else if(data=="N"){
							alert("删除失败");
						}

					},
					dataType:"text"
				})
			});
		})
	</script>
</head>

<body>
<div style="background: white;width: 70%;margin: 0 auto;opacity: 0.9">
	<h2>新闻管理系统操作平台</h2>
	<nav>
		<hr>
		<a href="#a1">新闻一览</a>
		<a href="#a2">增加新闻</a>
		<a href="#a3">删除新闻</a>
		<a href="http://localhost:8080/">退出系统</a>
		<hr>
	</nav>
	<dl id="a1">
		<table>
			<tr>
				<td style="width: 100px">新闻标题</td>
				<td style="width: 300px">新闻内容</td>
				<td style="width: 100px">撰写记者</td>
				<td style="width: 100px">撰写时间</td>
			</tr>
			<c:forEach var="list" items="${list}">

				<tr>
					<td style="width: 100px"><c:out value="${list.title}" /></td>
					<td style="width: 300px"><c:out value="${list.main}" /></td>
					<td style="width: 100px"><c:out value="${list.name1}" /></td>
					<td style="width: 100px"><c:out value="${list.time}" /></td>
				</tr>
			</c:forEach>
		</table>
	</dl>
	<dl id="a2">
		<table>
			<tr></tr>
			<tr>
				<td style="width: 100px">请输入新闻标题</td>
				<td style="width: 350px"><input type="text" style="width: 300px;height: 24px;border: 1px solid gray" placeholder="请输入..." id="o1"></td>
			</tr>
			<tr>
				<td style="width: 100px">请输入新闻内容</td>
				<td style="width: 350px"><input type="text" style="width: 300px;height: 24px;border: 1px solid gray" placeholder="请输入..." id="o2"></td>
			</tr>
			<tr>
				<td style="width: 100px">请输入撰写记者</td>
				<td style="width: 350px"><input type="text" style="width: 300px;height: 24px;border: 1px solid gray" placeholder="请输入..." id="o3"></td>
			</tr>
			<tr>
				<td style="width: 100px">请输入提交时间</td>
				<td style="width: 350px"><input type="text" style="width: 300px;height: 24px;border: 1px solid gray" placeholder="请输入..." id="o4"></td>
			</tr>
			<tr>
				<td style="width: 450px;">
					<a href="###" id="o5" class="w1" style="margin: 0 auto;display: block;">确认添加</a>
				</td>
			</tr>
		</table>
	</dl>
	<dl id="a3">
		<table>
			<tr></tr>
			<tr>
				<td style="width: 100px">请输入新闻标题</td>
				<td style="width: 350px"><input type="text" style="width: 300px;height: 24px;border: 1px solid gray" placeholder="请输入..." id="p1"></td>
			</tr>

			<tr>
				<td style="width: 450px;">
					<a href="###" id="p2" class="w1" style="margin: 0 auto;display: block;">确认删除</a>
				</td>
			</tr>
		</table>
	</dl>
	<dl id="a4">

	</dl>
</div>
</body>
</html>
