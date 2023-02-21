<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html >
<head>
	<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
	<title>${ empadd }</title>
	<meta http-equiv="content-type" content="text/html; charset=gb2312">
	<script type="text/javascript">
window.onload =function() {
	var a=document.getElementById("hide").value;
	if(a>0){
		document.getElementById("updateemp").value="信息修改"
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
	#cuttingIdNo
	{
		width:84px; height:20px; background:#EDEDED; border:1px solid #999; text-indent:5px; font-size:18px;
	}
	#cuttingIdYes
	{
		width:84px; height:20px; background:#EDEDED; border:1px solid #999; text-indent:5px; font-size:18px;
	}
</style>
		</head>
<body><!-- body-start  -->


<h2>${ empadd }</h2>
<hr/>
<form action="empAdd" method="POST">
	<table border="1">
		<tr>
			<td width="30%">员工姓名</td>
			<td>
				<input id="hide"  style="display:none" name="id" value="${emp.id }"/>
				<input type="text" name="name" value="${emp.name }".trim()/>
			</td>
		</tr>
		<tr >
			<td width="30%">性别</td>
			<td>
				<c:choose>
				<c:when test="${emp.sex=='女'}">
					<INPUT id="cuttingIdNo" type = "radio" checked="checked" name = "sex" value = "男" > </INPUT > 男
					<INPUT id="cuttingIdYes" type = "radio" name = "sex" value = "女" > </INPUT > 女
				</c:when>
				<c:otherwise>
					<INPUT id="cuttingIdNo" type = "radio" checked="checked" name = "sex" value = "男" > </INPUT > 男
					<INPUT id="cuttingIdYes" type = "radio" name = "sex" value = "女" > </INPUT > 女
				</c:otherwise>
				</c:choose>
			<td>
		</tr>



		<tr>
			<td width="30%">岗位</td>
			<td>
				<input type="text" name="station" value="${emp.station}".trim()/>
			</td>
		</tr>


		<tr>
			<td width="30%">薪资</td>
			<td>
				<input type="text" name="salary" value="${emp.salary}".trim()/>
			</td>
		</tr>



		<tr>
			<td width="30%">联系电话</td>
			<td>
				<input type="text" name="tel" value="${emp.tel}".trim()/>
			</td>
		</tr>



		<tr>
			<td width="30%">住址</td>
			<td>
				<input type="text" name="address" value="${emp.address}".trim()/>
			</td>
		</tr>
		<tr>
			<td width="30%">身份证号</td>
			<td>
				<input type="text" name="idcard" value="${emp.idcard}".trim()/>
			</td>
		</tr>

		<tr>
			<td width="30%">备注</td>
			<td>
				<input type="text" name="remark" value="${emp.remark}"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
				<input  id="updateemp" type="submit" value="信息入库"/>
				<p class="dis" align="center">

				</p>
			</td>
			
		</tr>
	</table>
</form>
</body><!-- body-end  -->



<%--$(".font").find("input[name='status']").removeAttr("checked");--%>
<%--if ('1' == result.status){--%>
<%--$("#open").attr("checked","checked");--%>
<%--} else if ('0' == result.status){--%>
<%--$("#close").attr("checked","checked");--%>


</html>



