<%@ page pageEncoding="utf-8"%>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>厂家信息</title>
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
		#add-office{text-align:center;font-size:20px;}
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

<h2>厂家信息</h2>
<div id="add-office">
	<a href="office_add" target="rightFrame">信息入库</a>
</div>
<hr/>
<h3 slot="title" class="category__header-title">
	<Icon type="ios-paper-outline" color="#2D8cF0"/>
	数据管理
	<%--<div class="pull-right">--%>
		<%--颜色： <input style= "color:#87CEFA;height: 22px" type="text" name="boardColor" id="boardColor" size="2"  />&nbsp;&nbsp;--%>
		<%--材质： <input style= "color:#87CEFA;height: 24px" type="text" name="material" id="material" size="2"  />&nbsp;&nbsp;--%>
		<%--厚度： <input style= "color:#87CEFA;height: 24px" type="text" name="land" id="land" size="2"  />--%>
		<%--<Button type="primary" class="demo" style="margin-left: 48px"  onclick="find()" >查询</Button>--%>
	<%--</div>--%>
</h3>

<%--<input id="nextpageHide" value="${nextpageHide}" } >--%>

<input id="record" value="${record}"  style="display:none"} >

<table border="1">
	<tr>
		<th class="width-8">序号</th>
		<th class="width-9">厂家名称</th>
		<th class="width-8">负责人</th>
		<th class="width-8">联系电话</th>
		<th class="width-8">备注</th>
		<th class="width-8">操 作</th>
	</tr>
	<c:forEach items="${ officeList }" var="office" varStatus="vs">
		<tr>
			<td>${ vs.count }</td>
			<td>${ office.officeName }</td>
			<td>${ office.manager }</td>
			<td>${ office.tel }</td>
			<td>${ office.remark }</td>
			<td>
				<a href="officeDelete?id=${ office.id }"
				   onclick="return officeDelete()">删除</a>
				&nbsp;|&nbsp;
				<a href="officeInfo?id=${ office.id }">修改</a>
			</td>
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
	function officeDelete(){
		return confirm("确定要删除吗?");
	}

	function find(){
		var a=document.getElementById("boardColor").value;
		var b=document.getElementById("material").value;
		var c=document.getElementById("land").value;
		window.location.href="${pageContext.request.contextPath}/officeList?boardColor="+a+"&material="+b+"&land="+c
	}
</script>

</body><!-- body-end  -->
</html>



