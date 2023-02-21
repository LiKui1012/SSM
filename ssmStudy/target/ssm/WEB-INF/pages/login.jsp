<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>
<div class="container">
	<h1 align="center">Login Page</h1><br>
	<form action="${pageContext.request.contextPath}/admin/login" method="post">
		<div class="form-group">
			<label for="name">UserName:</label>
			<input type="text" class="form-control" id="name" name="name">
		</div>
		<div class="form-group">
			<label for="passwd">Passwd:</label>
			<input type="password" class="form-control" id="passwd" name="passwd">
		</div>
		<button type="submit" class="btn btn-primary">submit</button>
	</form>
</div>
</body>

</html>