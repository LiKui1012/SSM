<%@ page pageEncoding="utf-8"%>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>入库记录</title>
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
	#add-board{text-align:center;font-size:20px;}
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

<h2>入库记录</h2>
<div id="add-board">
	<a href="board_add" target="rightFrame">新增入库</a>
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
<input id="ifallready" value="${allreadey}" } style="display:none">
<%--<input id="nextpageHide" value="${nextpageHide}" } >--%>

<table border="1">
	<tr>
		<th class="width-40">序号</th>
		<th class="width-80">板材颜色</th>
		<th class="width-40">材质</th>
		<th class="width-40">厚度(mm)</th>
		<th class="width-40">入库数量</th>
		<th class="width-40">来源厂家</th>
		<th class="width-80">入库时间</th>
		<th class="width-80">修改时间</th>
		<th class="width-80">备注</th>
		<th class="width-80">操 作</th>
	</tr>
<c:forEach items="${ boardList }" var="board" varStatus="vs">
	<tr>
		<td>${ vs.count }</td>
		<td>${ board.boardColor }</td>
		<td>${ board.material }</td>
		<td>${ board.land }</td>
		<td>${ board.newTotal }</td>
		<td>${ board.officeName }</td>
		<td>${ board.createTime }</td>
		<td>${ board.updateTime }</td>
		<td>${ board.boardRemarks }</td>
		<td>
			<a href="boardDelete?id=${ board.id }" 
				onclick="return boardDelete()">删除</a>
			<%--&nbsp;|&nbsp;--%>
			<a href="boardInfo?id=${ board.id }">修改</a>
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
<!-- <div style="text-align:center;color:#AAA;line-height:40px;">
	提示:删除门店同时会删除该门店下的所有订单!
</div> -->

<script type="text/javascript">

window.onload =function() {
	var a=document.getElementById("ifallready").value;
     
    console.log(a+"++++++++++++++++");

  if('' != a){
		
		confirm(a);
	
	}

}

	
	function boardDelete(){
		return confirm("确定要删除吗?");
	}

function find(){
	var a=document.getElementById("boardColor").value;
	var b=document.getElementById("material").value;
	var c=document.getElementById("land").value;
	window.location.href="${pageContext.request.contextPath}/boardStockList?boardColor="+a+"&material="+b+"&land="+c
}
</script>

</body><!-- body-end  -->
</html>



