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
		background-image: url("<%=request.getContextPath()%>/resources/images/메인배경.jpg" );
		background-size: 100% 100%;
		position: relative;
	}
	section > div{
		width: 25%;
		height: 200px;
		background: blue;
		display: inline;
		position: absolute;
		bottom: 0;
	}
	section > div button{
		width: 40%;
		position: absolute;
		left: 30%;
	}
	section #box1{
		background: pink;
	}
	section #box2{
		background: skyblue;
		left: 25%;
	}
	section #box3{
		background: lightblue;
		left: 50%;
	}
	section #box4{
		left: 75%;
		background: lightgreen;
	}
	section .upBox{
		width: 100%;
		height: 50%;
		font-size: 40px;
		font-family: 'Spoqa Han Sans';
		font-weight: bolder;
		text-align: center;
		color: white;
		padding-top: 15%;
	}
	section .downBox{
		width: 100%;
		height: 50%;
		color: #182153;
		font-size: 18px;
		font-family: 'Spoqa Han Sans';
		text-align: center;
		padding-top: 5%;
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
	}
	@media (max-height: 768px){
		#container{
			height: 768px;
			
		}
	}
	</style>
	
	<script>
	function boxEnter(e){
		var boxId = e.id;
		if(boxId == "box1"){
			$("#"+boxId).css({"background" : "#ffc0cb9c"});
		}else if(boxId == "box2"){
			$("#"+boxId).css({"background" : "#87ceeb87"});
		}else if(boxId == "box3"){
			$("#"+boxId).css({"background" : "#add8e691"});
		}else if(boxId == "box4"){
			$("#"+boxId).css({"background" : "#90ee909e"});
		}
		$("#"+boxId+" *").css({"color" : "white"});
		$("#"+boxId).children()[1].children[0].hidden = false;	
	}
	function boxLeave(e){
		var boxId = e.id;
		if(boxId == "box1"){
			$("#"+boxId).css({"background" : "pink"});
		}else if(boxId == "box2"){
			$("#"+boxId).css({"background" : "skyblue"});
		}else if(boxId == "box3"){
			$("#"+boxId).css({"background" : "lightblue"});
		}else if(boxId == "box4"){
			$("#"+boxId).css({"background" : "lightgreen"});
		}
		$("#"+boxId+" .downBox").css({"color" : "#182153"});
		$("#"+boxId).children()[1].children[0].hidden = true;
	}
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
			<div id="box1" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);">
				<div class="upBox">
					Introduce
				</div>
				<div class="downBox">
					<button class="btn btn-danger" hidden onclick="goIntroduce();">들어가기</button>
					저를 소개합니다.
				</div>
				
			</div>
			<div id="box2" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);">
				<div class="upBox">
					Skills
				</div>
				<div class="downBox">
					<button class="btn btn-danger" hidden onclick="goSkills();">들어가기</button>
					사용 가능한 기능을 소개합니다.
				</div>
			</div>
			<div id="box3" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);">
				<div class="upBox">
					Project
				</div>
				<div class="downBox">
					<button class="btn btn-danger" hidden onclick="goProject();">들어가기</button>
					구현한 프로젝트를 소개합니다.
				</div>
			</div>
			<div id="box4" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);">
				<div class="upBox">
					Contact
				</div>
				<div class="downBox">
					<button class="btn btn-danger" hidden onclick="goContact();">들어가기</button>
					저와 연락할 방법을 소개합니다.
				</div>
			</div>
		</section>
	</div>
</body>
</html>