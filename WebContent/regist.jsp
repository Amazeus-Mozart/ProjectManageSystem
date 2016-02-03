<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script type="text/javascript">
	function isVerify(form) {
		var formName, formPsd, formPsdConfirm;

		with (form) {
			with (username) {
				formName = value;
			}
			with (password) {
				formPsd = value;
			}
			with (psdConfirm) {
				formPsdConfirm = value;
			}

		}
		if (formName == null || formName == "" || formPsd == null
				|| formPsd == "" || formPsdConfirm == null
				|| formPsdConfirm == "") {
			alert("请完善注册信息");
			return false;
		}

		if (formPsd != formPsdConfirm) {
			alert("密码与确认密码不一致");

			return false;
		}
		return true;
	}
</script>

</head>

<body>



	<form action="${pageContext.request.contextPath}/regist.action"
		method="post" onsubmit="return isVerify(this)">
		帐号：<input type="text" name="username"  /> <br /> 密码：<input
			type="password" name="password" /> <br />确认密码： <input
			type="password" name="psdConfirm" /> <br />
		<input type="submit" value="注册" />
		<p>${errorMsg}</p>
	</form>
	
	
</body>
</html>
