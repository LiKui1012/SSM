<%@ page pageEncoding="utf-8"%>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>库存统计</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<style type="text/css">
		body{ font-family: "微软雅黑"; background-color: #EDEDED; }
		h2{ text-align: center;}
		table{ width:96%; margin: 0 auto; text-align: center; border-collapse:collapse; font-size:16px;}
		td, th{ padding: 5px;}
		th{ background-color: #DCDCDC; width:120px; }
		th.width-40{ width: 40px; }
		th.width-70{ width: 70px; }
		th.width-80{ width: 80px; }
		hr{ margin-bottom:20px; border:1px solid #aaa; }
		#add-cutting{text-align:center;font-size:20px;}
		.pull-right {
			float: right!important;
		}
		.category__header-title {
			height: 50px;
			display: block;
		}
		.demo{
			width: 50px;
			height: 30px;
		}
	</style>
</head>
<body><!-- body-start  -->

<h2>库存统计</h2>
<hr/>
<h3 slot="title" class="category__header-title">
	<Icon type="ios-paper-outline" color="#2D8cF0"/>
	数据管理
	<div class="pull-right">
		颜色： <input style= "color:#87CEFA;height: 22px" type="text" name="boardColor" id="boardColor" size="2"  />&nbsp;&nbsp;
		材质： <input style= "color:#87CEFA;height: 24px" type="text" name="material" id="material" size="2"  />&nbsp;&nbsp;
		厚度： <input style= "color:#87CEFA;height: 24px" type="text" name="land" id="land" size="2"  />
		<Button type="primary" class="demo" style="margin-left: 48px"  onclick="find()" >查询</Button>
	</div>
</h3>
<table border="1">
	<tr>
		<th class="width-80">板材颜色</th>
		<th class="width-40">材质</th>
		<th class="width-40">厚度(mm)</th>
		<th class="width-40">累计库存</th>
		<th class="width-80">累计开料</th>
		<th class="width-80">库存</th>
	</tr>
	<c:forEach items="${ boardList }" var="stockVo" varStatus="vs">
		<tr>
			<td>${ stockVo.boardColor }</td>
			<td>${ stockVo.material }</td>
			<td>${ stockVo.land }</td>
			<td>${ stockVo.total }</td>
			<td>${ stockVo.useTotal }</td>
			<td>${ stockVo.residue }</td>
		</tr>
	</c:forEach>
</table>
<div style="text-align:center">
	<a href="?start=0">首  页</a>
	<c:if test="${page.start-page.count>0}">
		<a href="?start=${page.start-page.count}&">上一页</a>
	</c:if>
	<c:if test="${nextpageHide>0}">
		<a href="?start=${page.start+page.count}&">下一页</a>
	</c:if>
	<a href="?start=${page.last}">末  页</a>
</div>

<script type="text/javascript">
	function find(){
		var a=document.getElementById("boardColor").value;
		var b=document.getElementById("material").value;
		var c=document.getElementById("land").value;
		window.location.href="${pageContext.request.contextPath}/stockStatisticsList?boardColor="+a+"&material="+b+"&land="+c
	}
</script>

</body><!-- body-end  -->
</html>



