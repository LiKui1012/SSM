<%@ page pageEncoding="utf-8" %>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>
<div class="container">
	<button id="admin" class="btn btn-outline-primary" onclick="testAll(this)">admin</button><br>
	<button class="btn btn-secondary" onclick="testAll(this)">other</button><br><hr>
	<button class="btn btn-warning" onclick="testAll(this)">insert</button>
	<button class="btn btn-danger" onclick="testAll(this)">delete</button>
	<button class="btn btn-info" onclick="testAll(this)">query</button>
	<button class="btn btn-success" onclick="testAll(this)">update</button>
	<br>
	<a href="${pageContext.request.contextPath}/admin/logout" class="btn">logout</a>
</div>
<script  src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js">//引入jquery框架
</script>
</body>


<script type="text/javascript">
	function testAll(el)
	{
		var url="${pageContext.request.contextPath}/role_permission/";
		$.get(url+el.innerText,function (data)
		{
			alert("ajax回调")
			if (data===true)
			{
				alert("You have "+el.innerText);
			}
			else
			{
				alert("You have no "+el.innerText);
			}
		});
	}
</script>
</html>