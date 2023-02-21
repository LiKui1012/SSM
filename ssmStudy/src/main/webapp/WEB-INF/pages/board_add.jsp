<%@ page pageEncoding="utf-8"%>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html >
<head>
	<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
<%--//实际没有上面的代码--%>
	<title>${ boardadd }</title>
	<meta http-equiv="content-type" content="text/html; charset=gb2312">
	<%--//实际没有上面的代码--%>

	<script type="text/javascript">


window.onload =function() {
	var a=document.getElementById("hide").value;
/* 	alert("a"+a);
 */	/* document.getElementById("updateBoard").value="修改板材"
	alert("值："+document.getElementById("updateBoard").value); */

	if(a>0){
		
		document.getElementById("updateBoard").value="入库修改"
/* 		alert("值："+document.getElementById("updateBoard").value);
 */		
	}
}

		</script>
<%--<meta http-equiv="content-type" content="text/html; charset=UTF-8">--%>
<style type="text/css">
	body{ font-family: "微软雅黑"; background-color: #EDEDED; }
	h2{ text-align: center;font-size:26px; }
	table{ margin: 30px auto; text-align: center; border-collapse:collapse; width:50%; }
	td, th{ padding: 7px;font-size:18px;}
	hr{ margin-bottom:20px; border:1px solid #aaa; }
	input,select,textarea{ width:284px; height:30px; background:#EDEDED; border:1px solid #999; text-indent:5px; font-size:18px; }
	input[type='submit']{ width:130px; height:36px; cursor:pointer; border-radius:5px 5px 5px 5px; background:#ddd; }
	input[type='button']{ width:130px; height:36px; cursor:pointer; border-radius:5px 5px 5px 5px; background:#ddd; }

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


<h2>${ boardadd }</h2>
<hr/>
<form action="boardAdd" method="POST">
	<table border="1">
		<tr>
			<td width="30%">颜色</td>
			<td>
				<input id="hide"  style="display:none" name="id" value="${board.id }"/>
			
				<input type="text" name="boardColor" value="${board.boardColor }".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">材质</td>
			<td>
				<input type="text" name="material" value="${board.material}".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">厚度(mm)</td>
			<td>
				<input type="text" name="land" value="${board.land}".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">入库数量</td>
			<td>
				<input type="text" name="newTotal" value="${board.newTotal}"/>
			</td>
		</tr>
		
		
		<%--<tr>--%>
			<%--<td width="30%">余料数量</td>--%>
			<%--<td>--%>
				<%--<input type="text" name="oldTotal" value="${board.oldTotal}"/>--%>
			<%--</td>--%>
		<%--</tr>--%>

		<tr>
			<td width="30%">来源厂家</td>
			<td>
				<input type="text" name="officeName" value="${board.officeName}"/>
			</td>
		</tr>
		
		
		<tr>
			<td width="30%">备注</td>
			<td>
				<input type="text" name="boardRemarks" value="${board.boardRemarks}"/>
			</td>
		</tr>

		
		<tr>
			<td colspan="2">
				<input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
				<input  id="updateBoard" type="submit" value="板材入库"/>
				<p class="dis" align="center">

				</p>
			</td>
			
		</tr>
	</table>
</form>
</center>
</body><!-- body-end  -->

<input  name="button"   onClick="document.all.WebBrowser.ExecWB(7,1)"   type="button"   value=打印预览>
<input  name="button"   onClick="document.all.WebBrowser.ExecWB(6,1)"   type="button"   value=打印>







</html>



