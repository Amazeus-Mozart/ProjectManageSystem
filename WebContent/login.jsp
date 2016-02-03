<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

</head>

<body>
	<form action="${pageContext.request.contextPath}/login.action"
		method="post">
		帐号：<input type="text" name="username"  value="${username}"/> <br /> 密码：<input
			type="password" name="password" value="${password}" /> <br /> <input type="submit"
			value="登录" />
		<p>${errormessage}</p>
	</form>


	<a href="./regist.jsp">注册</a>



</body>
</html>
