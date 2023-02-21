<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html >
<head>
	<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
	<title>${ cuttingadd }</title>
	<meta http-equiv="content-type" content="text/html; charset=gb2312">
	<script type="text/javascript">
		</script>
<style type="text/css">
	body{ font-family: "微软雅黑"; background-color: #EDEDED; }
	h2{ text-align: center;font-size:26px; }
	table{ margin: 30px auto; text-align: center; border-collapse:collapse; width:50%; }
	td, th{ padding: 7px;font-size:18px;}
	hr{ margin-bottom:20px; border:1px solid #aaa; }
	input,select,textarea{ width:284px; height:30px; background:#EDEDED; border:1px solid #999; text-indent:5px; font-size:18px; }
	input[type='submit']{ width:130px; height:36px; cursor:pointer; border-radius:5px 5px 5px 5px; background:#ddd; }
	input[type='button']{ width:130px; height:36px; cursor:pointer; border-radius:5px 5px 5px 5px; background:#ddd; }
	#cuttingIdNo
	{
		width:84px; height:20px; background:#EDEDED; border:1px solid #999; text-indent:5px; font-size:18px;
	}
	#cuttingIdYes
	{
		width:84px; height:20px; background:#EDEDED; border:1px solid #999; text-indent:5px; font-size:18px;
	}
	.boardCutting{
		width:154px; height:30px; background:#EDEDED; border:1px solid #999; text-indent:5px; font-size:18px;
	}
	select{text-indent:0px;}
	textarea{height:100px;font-size:22px;}
</style>
	<style type="text/css" media="print">
		.Noprint{display:none;}
		.PageNext{page-break-after: always;}
	</style>
		</head>
<body><!-- body-start  -->
<center class=”Noprint” >
<p>
	<OBJECT id=WebBrowser classid=CLSID:8856F961-340A-11D0-A96B-00C04FD705A2 height=0 width=0>
	</OBJECT>


<h2>${ cuttingadd }</h2>
<hr/>
<form action="boardOutStock" method="POST">
	<%--<form>--%>
	<table border="1">
		<input id="hide"  style="display:none" name="cutIds" value="${listCutIds}"/>
		<c:forEach var="board" items="${boardList}" varStatus="vs">
		<tr>
			<td width="18%">板材</td>
			<td>
				<input type="text" class="boardCutting" value="${board.boardColor}${board.material}${board.land}".trim() readonly/>
			</td>
			<td width="24%">当前库存数</td>
			<td>
				<input type="text"  class="boardCutting" name="total" value="${board.currentStock}".trim() readonly/>
			</td>
			<td width="24%">出库数</td>
			<td>
				<input type="text" class="boardCutting" name="useTotal" value="${board.useTotal}".trim() readonly/>
			</td>
			<td width="24%">剩余库存数</td>
			<td>
				<input type="text" class="boardCutting" value="${board.residue}".trim() readonly/>
			</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="8">
				<input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
				<input  id="updateBoard" type="submit" value="确认出库"/>
				<%--<input  id="updateBoard" type="button" value="确认出库" onclick="boardOutStock(${boardList})" />--%>
				<p class="dis" align="center">
				</p>
			</td>
		</tr>
	</table>
</form>
</center>


<script type="text/javascript">
	function boardOutStock(boardList){
		confirm("确定要出库吗?");
		alert(boardList);
		console.log(boardList);
		// window.location.href="http://localhost:8080/yonghe_war/cuttingList?boardColor="+a+"&material="+b+"&land="+c
	}
</script>
</body><!-- body-end  -->

</html>



