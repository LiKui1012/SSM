<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html >
<head>
	<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
	<title>${ officeadd }</title>
	<meta http-equiv="content-type" content="text/html; charset=gb2312">
	<script type="text/javascript">
window.onload =function() {
	var a=document.getElementById("hide").value;
	if(a>0){
		document.getElementById("updateoffice").value="信息修改"
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
	select{text-indent:0px;}
	textarea{height:100px;font-size:22px;}
</style>
		</head>
<body><!-- body-start  -->


<h2>${ officeadd }</h2>
<hr/>
<form action="officeAdd" method="POST">
	<table border="1">
		<tr>
			<td width="30%">厂家名称</td>
			<td>
				<input id="hide"  style="display:none" name="id" value="${office.id }"/>
				<input type="text" name="officeName" value="${office.officeName }".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">负责人</td>
			<td>
				<input type="text" name="manager" value="${office.manager}".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">联系电话</td>
			<td>
				<input type="text" name="tel" value="${office.tel}".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">备注</td>
			<td>
				<input type="text" name="remark" value="${office.remark}"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
				<input  id="updateoffice" type="submit" value="信息入库"/>
				<p class="dis" align="center">

				</p>
			</td>
			
		</tr>
	</table>
</form>
</body><!-- body-end  -->


</html>



