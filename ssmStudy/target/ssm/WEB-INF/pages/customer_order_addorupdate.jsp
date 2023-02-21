<%@ page pageEncoding="utf-8"%>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>${ customerorder }</title>
<script type="text/javascript">


window.onload =function() {
	var a=document.getElementById("hide").value;
	if(a>0){
		document.getElementById("updateBoard").value="修改订单"
	}
}

		</script>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<style type="text/css">
	body{ font-family: "微软雅黑"; background-color: #EDEDED; }
	h2{ text-align: center;font-size:26px; }
	table{ margin: 30px auto; text-align: center; border-collapse:collapse; width:50%; }
	td, th{ padding: 7px;font-size:18px;}
	hr{ margin-bottom:20px; border:1px solid #aaa; }
	input,select,textarea{ width:284px; height:30px; background:#EDEDED; border:1px solid #999; text-indent:5px; font-size:18px; }
	input[type='submit']{ width:130px; height:36px; cursor:pointer; border-radius:5px 5px 5px 5px; background:#ddd; }
	select{text-indent:0px;}
	textarea{height:100px;font-size:22px;}
</style>
</head>
<body><!-- body-start  -->



<h2>${ customerorder }</h2>
<hr/>
<form action="addOrUpdate" method="POST">
	<table border="1">
		<tr>
			<td width="30%">厂家</td>
			<td>
				<input id="hide"  style="display:none" name="id" value="${customerOrder.id }"/>
			
				<input type="text" name="company" value="${customerOrder.company }"/>
			</td>
		</tr>
		<tr>
			<td width="30%">定板时间</td>
			<td>
				<input type="text" name="orderBoardTime" value="${customerOrder.orderBoardTime}"/>
			</td>
		</tr>
		<tr>
			<td width="30%">联系人号码</td>
			<td>
				<input type="text" name="phoneNumber" value="${customerOrder.phoneNumber}"/>
			</td>
		</tr>
		<tr>
			<td width="30%">是否催单</td>
			<td>
				<input type="text" name="orderReminder" value="${customerOrder.orderReminder}"/>
			</td>
		</tr>
		
		<tr>
			<td width="30%">是否到货</td>
			<td>
				<input type="text" name="boardArrival" value="${customerOrder.boardArrival}"/>
			</td>
		</tr>
		
		
		
		<tr>
			<td width="30%">到货时间</td>
			<td>
				<input type="text" name="boardArrivalTime" value="${customerOrder.boardArrivalTime}"/>
			</td>
		</tr>
		
		<tr>
			<td width="30%">定板数量</td>
			<td>
				<input type="text" name="orderBoardCount" value="${customerOrder.orderBoardCount}"/>
			</td>
		</tr>
		
		<tr>
			<td width="30%">是否加入库存</td>
			<td>
				<input type="text" name="addTotal" value="${customerOrder.addTotal}"/>
			</td>
		</tr>
		
		
		<tr>
			<td width="30%">到板id</td>
			<td>
				<input type="text" name="boardId" value="${customerOrder.boardId}".trim()/>
			</td>
		</tr>
		
		
		
		
		<tr>
			<td width="30%">备注</td>
			<td>
				<input type="text" name="orderRemarks" value="${customerOrder.orderRemarks}"/>
			</td>
		</tr>

		
		<tr>
			<td colspan="2">
				<input  id="updateBoard" type="submit" value="添加订单"/>
			</td>
			
		</tr>
	</table>
</form>
<script>





</script>
</body><!-- body-end  -->







</html>



