<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="/SASS/Public/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ログイン画面</title>
</head>

<body>
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">self_assessment_support_system</a>
				</div>
			</div>
		</nav>
		<div class="col-xs-3 col-sm-3 col-md-3"></div>

		<div class="col-xs-6 col-sm-6 col-md-6">
			<form action='/SASS/Public/student/LoginStudentServlet' method='POST'>

				<!-- アラートの表示 -->
				<div id="timeout">
					<div class="alert alert-danger">
						<button type="button" class="close" data-dismiss="alert"></button>
						エラーが発生しました。<br>もう一度ログインしてください。
					</div>
				</div>

				<!-- ログインフォーム -->
				<div style="text-align: center">
					<h3>Login Form</h3>
					<br>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ユーザID" name="userId">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="パスワード" name="password">
					</div>
				</div>
				<div style="text-align: right">
					<div>
						<button type="submit" class="btn btn-success">サインイン</button>
					</div>
				</div>
			</form>
		</div>

		<div class="col-xs-3 col-sm-3 col-md-3"></div>
	</div>
</body>

<script src="../common/bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#timeout").fadeIn().queue(function() {
			setTimeout(function() {
				$("#timeout").dequeue();
			}, 5000);
		});
		$("#timeout").fadeOut();
	});
</script>

</html>