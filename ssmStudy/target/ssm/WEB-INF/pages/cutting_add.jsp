<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html >
<head>
	<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
	<title>${ cuttingadd }</title>
	<meta http-equiv="content-type" content="text/html; charset=gb2312">
	<script type="text/javascript">

window.onload =function() {
	var a=document.getElementById("hide").value;
	if(a>0){
		document.getElementById("updateBoard").value="开料修改"
		document.getElementById("cuttingId").style.display="none";
	}
}
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
<form action="cuttingAdd" method="POST">
	<table border="1">
		<tr>
			<td width="30%">颜色</td>
			<td>
				<input id="hide"  style="display:none" name="id" value="${cutting.id }"/>
			
				<input type="text" name="boardColor" value="${cutting.boardColor }".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">材质</td>
			<td>
				<input type="text" name="material" value="${cutting.material}".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">厚度(mm)</td>
			<td>
				<input type="text" name="land" value="${cutting.land}".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">开料数量</td>
			<td>
				<input type="text" name="usedTotal" value="${cutting.usedTotal}"/>
			</td>
		</tr>
		
		

		<tr id="cuttingId" >
			<td width="30%">同一开料单号</td>
			<td>
			<INPUT id="cuttingIdNo" type = "radio" name = "sameCuttingId" value = "否" > </INPUT > 否
			<INPUT id="cuttingIdYes" type = "radio" name = "sameCuttingId" value = "是" > </INPUT > 是
			<td>
		</tr>
		
		
		<tr>
			<td width="30%">备注</td>
			<td>
				<input type="text" name="boardRemarks" value="${cutting.boardRemarks}"/>
			</td>
		</tr>

		
		<tr>
			<td colspan="2">
				<input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
				<input  id="updateBoard" type="submit" value="开始开料"/>
				<p class="dis" align="center">

				</p>
			</td>
			
		</tr>
	</table>
</form>
</center>
</body><!-- body-end  -->

</html>



