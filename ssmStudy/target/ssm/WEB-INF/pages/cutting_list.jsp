<%@ page pageEncoding="utf-8"%>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>开料记录</title>
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

<h2>开料记录</h2>
<div id="add-cutting">
	<a href="cutting_add" target="rightFrame">开料出库</a>
</div>
<hr/>
<h3 slot="title" class="category__header-title">
	<Icon type="ios-paper-outline" color="#2D8cF0"/>
	数据管理
	<div class="pull-right">
		颜色： <input style= "color:#87CEFA;height: 22px" type="text" name="boardColor" id="boardColor" size="2"  />&nbsp;&nbsp;
		材质： <input style= "color:#87CEFA;height: 24px" type="text" name="material" id="material" size="2"  />&nbsp;&nbsp;
		厚度： <input style= "color:#87CEFA;height: 24px" type="text" name="land" id="land" size="2"  />
		<Button type="primary" class="demo" style="margin-left: 48px"  onclick="find()" >查询</Button>

		<%--<Button class="demo" onclick="handleReset('formInline')" style="margin-left: 18px">重置--%>
		<%--</Button>--%>
	</div>
</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%--
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
--%>
<input type="button" value="出库" style="font-size: 20px; font-weight: bold" onclick="outStock()">
<br/>
<br/>

<%--<input id="nextpageHide" value="${nextpageHide}" } >--%>

<input id="record" value="${record}"  style="display:none"} >

<table border="1">
	<tr>
		<th class="width-8">开料出库</th>
		<th class="width-8">序号</th>
		<th class="width-9">开料单号</th>
		<th class="width-8">板材颜色</th>
		<th class="width-8">材质</th>
		<th class="width-8">厚度(mm)</th>
		<th class="width-8">开料数量</th>
		<th class="width-9">开料时间</th>
		<th class="width-9">修改时间</th>
		<th class="width-8">开料完成</th>
		<th class="width-9">备注</th>
		<th class="width-8">操 作</th>
	</tr>
	<c:forEach items="${ cuttingList }" var="cutting" varStatus="vs">
		<tr>
			<td>
				<c:choose>
			<c:when test="${cutting.cuttingFinish=='否'}">
				 <input   type=checkbox   name=chkBox   value=${ cutting.id }>
			</c:when>
			<c:otherwise>
				<input   checked disabled type=checkbox   name=chkBox value="">
			</c:otherwise>
				</c:choose>
			</td>
			<td>${ vs.count }</td>
			<td>${ cutting.cuttingId }</td>
			<td>${ cutting.boardColor }</td>
			<td>${ cutting.material }</td>
			<td>${ cutting.land }</td>
			<td>${ cutting.usedTotal }</td>
			<td>${ cutting.createTime }</td>
			<td>${ cutting.updateTime }</td>
			<td>
			<c:choose>
			<c:when test="${ cutting.cuttingFinish=='否'}">
				<p  style="color:red;font-size:16px;">否</p>
			</c:when>
			<c:otherwise>
				<p  style="font-size:16px;">是</p>
			</c:otherwise>
			</c:choose>
			</td>
			<td>${ cutting.boardRemarks }</td>
			<td>
				<a href="cuttingDelete?id=${ cutting.id }"
				   onclick="return cuttingDelete()">删除</a>
				<%--&nbsp;|&nbsp;--%>
				<a href="cuttingInfo?id=${ cutting.id }">修改</a>
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
	function cuttingDelete(){
		return confirm("确定要删除吗?");
	}

	function find(){
		var a=document.getElementById("boardColor").value;
		var b=document.getElementById("material").value;
		var c=document.getElementById("land").value;
		window.location.href="${pageContext.request.contextPath}/cuttingList?boardColor="+a+"&material="+b+"&land="+c
	}


	function outStock(){
		var boxes=document.getElementsByName("chkBox");
		var  arr=[];
		for(i=0;i<boxes.length;i++){
			if(boxes[i].checked==true && boxes[i].value!="" && boxes!=undefined && boxes!=null){
				arr.push(boxes[i].value)
			}
		}
		if(arr=="" || arr==undefined || arr==null || arr.length==0){
			alert("请至少选择一条开料未完成的数据");
			console.log("请至少选择一条开料未完成的数据")
			window.location.href= "${pageContext.request.contextPath}/cuttingList"
		}else{
			window.location.href= "${pageContext.request.contextPath}/cuttingBoard?list="+arr
		}
	}
</script>

</body><!-- body-end  -->
</html>



