<%@ page pageEncoding="utf-8"%>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>板材预定</title>
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
	
	#add-customerOrder{text-align:center;font-size:20px;}
</style>
</head>
<body><!-- body-start  -->

<h2>板材预定</h2>
<div id="add-customerOrder">
	<a href="customer_order_addorupdate" target="rightFrame">新增订单</a>
</div>
<hr/>
<table border="1">
	<tr>
		<th class="width-40">序号</th>
		<th>厂家</th>
		<th class="width-80">定板时间</th>
		<th>联系人号码</th>
		<th class="width-80">到板时间</th>
		<th>定板数量</th>
		<th class="width-80">到板id</th>
		<th class="width-80">订单备注</th>
		<th class="width-80">是否催单</th>
		<th class="width-40">是否到货</th>
		<th class="width-80">是否加入总量</th>
		<th class="width-80">操作</th>
	</tr>

	<!-- 模版数据:  model.addAttribute("customerOrderList", list); -->
<c:forEach items="${ customerOrderList }" var="customerOrder" varStatus="vs">
	<tr>
		<td>${ vs.count }</td>
		<td>${ customerOrder.company }</td>
		<td>${ customerOrder.orderBoardTime }</td>
		<td>${ customerOrder.phoneNumber }</td>
		<td >${ customerOrder.boardArrivalTime }</td>
		<td>${ customerOrder.orderBoardCount }</td>
		<td>${ customerOrder.boardId }</td>
		<td>${ customerOrder.orderRemarks }</td>
		<td>
		<c:choose>
		<c:when test="${ customerOrder.orderReminder==1}">
		 <p  style="color:red;font-size:16px;">催单</p>
		 </c:when>
		  <c:otherwise>
         <p  style="color:blue;font-size:16px;" onclick="addTotal1(${ customerOrder.id })">不催单</p>
        </c:otherwise>
		</c:choose>
		</td>
		 <td>
		<c:choose>
		<c:when test="${ customerOrder.boardArrival==1 }">
		 <p  style="color:grey;font-size:16px;">已到货</p>
		 </c:when>
		  <c:otherwise>
         <p  style="color:#FF00FF;font-size:16px;" onclick="addTotal2(${ customerOrder.id })">未到货</p>
        </c:otherwise>
		</c:choose>
		</td>
		<td>
		<c:choose>
		<c:when test="${ customerOrder.addTotal==1 }">
		 <p  style="color:grey;font-size:16px;">以库存</p>
		 </c:when>
		  <c:otherwise>
         <p  style="color:#FF00FF;font-size:16px;" onclick="addTotal(${ customerOrder.id },${ customerOrder.orderBoardCount })">未库存</p>
        </c:otherwise>
		</c:choose>
		</td> 
		<td>
			<a href="customerOrderDelete?id=${ customerOrder.id }" 
				onclick="return customerOrderDelete()">删除</a>
			&nbsp;|&nbsp;
			<a href="customerOrderInfo?id=${ customerOrder.id }">修改</a>
		</td>
	</tr>
</c:forEach>	
	

	
</table>
<div style="text-align:center;color:#AAA;line-height:40px;">
	提示:板材名称务必和库存列表中的一致!
</div>

<script type="text/javascript">
	function customerOrderDelete(){
		return confirm("确定要删除吗?");
	}
	function addTotal(i,j){
		console.log(j+"++++++++");
		window.location.href="${pageContext.request.contextPath}/addTotal?id="+i+"&orderBoardCount="+j;
		console.log("结束传值");
	}
	
	function addTotal1(i){
		window.location.href="${pageContext.request.contextPath}/addTotal1?id="+i;
		console.log("结束传值");
	}
	
	function addTotal2(i){
		window.location.href="${pageContext.request.contextPath}/addTotal2?id="+i;
		console.log("结束传值");
	}
	
	
	
	
	
	
	
	
	
</script>

</body><!-- body-end  -->
</html>



