<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
	int dateId = (int) session.getAttribute("dateId");
	String title = (String) session.getAttribute("title");
	String time = (String) session.getAttribute("time");
	int countId = (int) request.getAttribute("countId");
	int checkId = (int) session.getAttribute("checkId");
%>

<!DOCTYPE html>
<html>
<head>
<link href="../common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../common/bootstrap/css/bootstrap_slider.css" rel="stylesheet">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>自己評価画面</title>
</head>

<div class="container">

	<jsp:include page="/Public/common/jsp/studentLayout.jsp" />

	<form class="form-inline" enctype="multipart/form-data" method="post" action="RecieveSelfAssessmentBeforeStudentServlet">
		<div class="col-xs-1 col-sm-1 col-md-1"></div>
		<div class="col-xs-10 col-sm-10 col-md-10">
			<div class="jumbotron">
					<h4><%=title%>の振り返り（<%=countId%>）：
					</h4>
				<br>
				<div class="col-xs-10 col-sm-10 col-md-10">
					<input id="comp" name="comp_value" type="text" data-slider-min="1" data-slider-max="10" data-slider-step="1" data-slider-value="1" />
				</div>
				<div class="col-xs-2 col-sm-2 col-md-2">
					<span id="compCurrentSliderValLabel">value:<span id="compSliderVal">1</span></span>
				</div>
				<br> <br>
			</div>

			<div style="text-align: left">
				<!-- ファイルのアップロード -->
				<div class="input-group">
					<input type="file" name="fl" style="width: 100%" id="fileImage" required> <img id="preview" width="350" height="250">
				</div>
			</div>
			<%
				if (checkId == 0) {
			%>
			<div style="text-align: right">
				<button type="submit" class="btn btn-success">submit</button>
				<br><br>
			</div>
			<%
				}
			%>
		</div>
		<div class="col-xs-1 col-sm-1 col-md-1"></div>
		<input type="hidden" name="countId" value=<%=countId%>>
	</form>
</div>
<script src="../common/bootstrap/js/jquery.js"></script>
<script src="../common/bootstrap/js/bootstrap_slider.js"></script>
<script type="text/javascript">
	$("#comp").slider();
	$("#comp").on("slide", function(slideEvt) {
		$("#compSliderVal").text(slideEvt.value);
	});
</script>
<script type="text/javascript">
	$('#fileImage').on('change', function(e) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#preview").attr('src', e.target.result);
		}
		reader.readAsDataURL(e.target.files[0]);
	});
</script>
</html>