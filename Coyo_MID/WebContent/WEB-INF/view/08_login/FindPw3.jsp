<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛있당</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<link rel="stylesheet" type="text/css" href="css/login/base.css">
<link rel="stylesheet" type="text/css" href="css/login/sign2.css">
<body>

	<c:import url="WaveHeader.jsp" />

	<div class="container">

		<div class="signin-header">
			<h2>PASSWORD 재설정</h2>
			<h5>회원가입 시 선택한 질문과 답변을 입력해 주세요.</h5>
		</div>

		<form class="form-horizontal" action="findpwchange.action" id="findpqform" name="findpqform" method="post">
			<div class="form-group">
				<label for="inputQuestion" class="col-sm-3 control-label">질문</label>
				<div class="col-sm-9">
					<select class="form-control" id="pqSelect" name="pqSelect">
						<option>회원 가입시 선택한 질문을 선택해 주세요.</option>
						<c:forEach var="pqList" items="${pqList }">
							<option value="${pqList.pq_id }">${pqList.pq_val }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="inputAnswer" class="col-sm-3 control-label">답</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="inputAnswer"
						placeholder="답" required>
				</div>
			</div>
			<div class="form-group">
				<div>
					<button type="submit" class="btn btn-default btn-lg"
						id="signin-btn">다음</button>
					<button type="button" class="btn btn-default btn-lg" id="list-btn"
						onclick="location.href='findcancel.action'">취소</button>
				</div>
			</div>
		</form>

	</div>

</body>
</html>