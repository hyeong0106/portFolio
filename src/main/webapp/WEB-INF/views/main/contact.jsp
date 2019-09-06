<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<head>
	<meta charset="UTF-8" />
	<title>김형민의 포트폴리오</title>
	<!-- 부트스트랩 사용 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<!-- 폰트 사용 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'sans-serif' 한글.-->
	<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
	<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>
	<!-- 폰트 사용 'Crimson Text', serif; 영문.-->
	<link href="https://fonts.googleapis.com/css?family=Crimson+Text&display=swap" rel="stylesheet">
	<!-- jquery 사용 -->
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
	
	<style>
	#container{
		margin: 0 auto;
		width: 100%;
		height: 100%;
	}
	header{
		width: 100%;
		height: 8%;
		font-family: 'Crimson Text', serif;
	}
	header #title{
		width: 20%;
		height: 100%;
		font-size: 38px;
		float: left;
		text-align: right;
	}
	header #menu{
		width: 80%;
		height: 100%;
		font-size: 22px;
		float: right;
		padding-left: 11%;
	}
	header #menu li:hover{
		color: orange;
	}
	header #menu *{
		height: 100%;
		padding-left: 5.5%;
		padding-right: 5.5%;
		border: none;
	}
	section{
		width: 100%;
		height: 92%;
		border-top: 1px solid lightgray;
		position: relative;
		z-index: 1;
	}
	section:after{
		content : "";
	    display: block;
	    position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    z-index: -1;
		background-image: url("<%=request.getContextPath()%>/resources/images/메인배경.jpg" );
		background-size: 100% 100%;
		opacity : 0.6;
	}
	section #mainDiv{
		width: 80%;
		height: 70%;
		margin: 0 auto;
		background: white;
		margin-top: 7.5%;
		border-radius: 5px;
		border: 1px solid gray;
	}
	section #mainDiv #leftDiv{
		width: 40%;
		height: 100%;
		float: left;
	}
	section #mainDiv #leftDiv img{
		width: 70%;
		height: 85%;
		margin-left: 15%;
		margin-top: 7.5%;
	}
	section #mainDiv #rightDiv{
		width: 60%;
		height: 100%;
		float: right;
	}
	section #mainDiv #rightDiv > div{
		width: 90%;
		height: 85%;
		margin-left: 5%;
		margin-top: 5%;
	}	
	section #mainDiv #rightDiv > div table{
		width: 90%;
	}
	@media (max-width: 1024px){
		#container{
			width: 1024px;
		}
		header{
			width: 1024px;
		}
		header #menu{
		padding-left: 10%;
		}
		header #menu *{
		padding-left: 5%;
		padding-right: 5%;
		}
		section #mainDiv #leftDiv img{
		width: 80%;
		height: 80%;
		margin-left: 10%;
		margin-top: 15%;
		}
		section #mainDiv #rightDiv > div{
		width: 90%;
		height: 80%;
		margin-left: 5%;
		margin-top: 10%;
		}
	}
	@media (max-height: 768px){
		#container{
			height: 768px;
			
		}
	}
	</style>
	
	<script>
	function goIntroduce(){
		location.href = "<%=request.getContextPath()%>/main/introduce";
	}
	function goSkills(){
		location.href = "<%=request.getContextPath()%>/main/skills";
	}
	function goProject(){
		location.href = "<%=request.getContextPath()%>/main/project";
	}
	function goContact(){
		location.href = "<%=request.getContextPath()%>/main/contact";
	}
	function goStudy(){
		location.href = "<%=request.getContextPath()%>/main/study";
	}
	</script>
	
</head>
<body>
	<div id="container">
		<header>
			<div id="title"><a href="<%=request.getContextPath()%>/" style="all:unset">PortFolio</a></div>
			<div id="menu">
				<ul class="list-group list-group-horizontal">
					<li class="list-group-item" onclick="goIntroduce();">Introduce</li>
					<li class="list-group-item" onclick="goSkills();">Skills</li>
					<li class="list-group-item" onclick="goProject();">Project</li>
					<li class="list-group-item" onclick="goContact();">Contact</li>
					<li class="list-group-item" onclick="goStudy();">Study</li>
				</ul>
			</div>
		</header>
		<section>
			<div id="mainDiv">
			  <div id="leftDiv">
			      <img src="${pageContext.request.contextPath}/resources/images/이력서 사진.jpg" class="card-img" alt="이력서 사진">
			  </div>
			  <div id="rightDiv">
			  	<div>
				  	<table class="table">
				  	 <tbody>
					    <tr>
					      <th scope="row">이름</th>
					      <td>김형민</td>
					    </tr>
					    <tr>
					      <th scope="row">영문</th>
					      <td>Kim Hyeong Min</td>
					    </tr>
					    <tr>
					      <th scope="row">직종</th>
					      <td>java 웹 개발자</td>
					    </tr>
					     <tr>
					      <th scope="row">전화번호</th>
					      <td>010-9031-9632</td>
					    </tr>
					     <tr>
					      <th scope="row">이메일</th>
					      <td>hyeong0106@naver.com</td>
					    </tr>
					     <tr>
					      <th scope="row">주소</th>
					      <td>서울 용산구 신흥로 7길 20 3층</td>
					    </tr>
					     <tr>
					      <th scope="row">홈페이지</th>
					      <td>...</td>
					    </tr>
					    <tr>
					      <th scope="row">경력</th>
					      <td>신입</td>
					    </tr>
					    <tr>
					      <th colspan="2"><a href="${pageContext.request.contextPath}/main/fileDownload?oName=이	력서_김형민.hwp">이력서 다운로드</a></th>
					    </tr>
					  </tbody>
				  	</table>
			    </div>  
			  </div>
			</div>
		</section>
	</div>
</body>
</html>