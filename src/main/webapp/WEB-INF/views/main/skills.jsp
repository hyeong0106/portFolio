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
		height: 62.5px;
		font-family: 'Crimson Text', serif;
		position: fixed;
		z-index: 2;
		background: white;
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
		top: 8%;
	}
	section > div{
		width: 100%;
		position: absolute;
		font-family: 'Spoqa Han Sans';
	}
	section #div1{
		height: 200px;
		background: skyblue;
		color: #182153;
		bottom: 0;
		text-align: center;
		padding-top: 37px;
	}
	section #div2{
		background: skyblue;
		bottom: -535;
		height: 535px;
		color: #182153;
		text-align: center;
	}
	section #div2 > h2{
		margin-top: 20px;
	}
	section #div2 #SkillsDiv div{
	    display: inline-block;
	    width: 100px;
	    height: 102px;
	    border-radius: 20px;
	    background-size: 100% 100%;
	    background-repeat: no-repeat;
	    box-shadow: 0 3px 6px rgba(0,0,0,.2), 0 3px 6px rgba(0,0,0,.2);
	    margin-left: 25px;
	    background-color: white;
	    font-size: 23px;
	   	vertical-align: middle;
	   	font-family: 'Spoqa Han Sans';
	   	font-weight: bolder;
	   	color: red;
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
	function boxEnter(e){
		var boxName = e.title;
		var boxId = e.id;
		$("#"+boxId).css({"opacity":"0.5"});
		if(boxName == "C언어" || boxName == "C++" || boxName == "python" || boxName == "springFramework"){
			$("#"+boxId)[0].innerText = "초급";
		}
		else if(boxName == "자바" || boxName == "javascript" || boxName == "html" || boxName == "css" || boxName == "jquery" || boxName == "oracle"){
			$("#"+boxId)[0].innerText = "중급";
		}else if(boxName == ""){
			$("#"+boxId)[0].innerText = "준비중";	
		}
	}
	function boxLeave(e){
		var boxName = e.title;
		var boxId = e.id;
		if(boxName != "nodejs" && boxName != "php" && boxName != "github"){
			$("#"+boxId)[0].innerText = "";
			$("#"+boxId).css({"opacity":"1"});
		}
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
			<div id="div1">
			<p style="font-size: 40px; font-weight: bolder; color: white;">Skills</p>
			<p style="font-size: 20px;"> ＊ 사용 가능한 기술 목록 ＊ </p>
			</div>
			<div id="div2">
				<h2 style="font-weight: bolder; font-size: 30px;">Language</h2>
				<div id="SkillsDiv">
					<div id="sk1-1" style="background-image: url('<%=request.getContextPath()%>/resources/images/c언어.jpg');" title="C언어" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk1-2" style="background-image: url('<%=request.getContextPath()%>/resources/images/c++.png');" title="C++" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk1-3" style="background-image: url('<%=request.getContextPath()%>/resources/images/자바.png');" title="자바" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk1-4" style="background-image: url('<%=request.getContextPath()%>/resources/images/javascript.png');" title="javascript" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk1-5" style="background-image: url('<%=request.getContextPath()%>/resources/images/python.png');" title="python" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk1-6" style="background-image: url('<%=request.getContextPath()%>/resources/images/php.png'); opacity:0.5;" title="php" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);">Study</div>
				</div>
				<h2 style="font-weight: bolder; font-size: 30px;">Web Skills</h2>
				<div id="SkillsDiv">
					<div id="sk2-1" style="background-image: url('<%=request.getContextPath()%>/resources/images/html.png');" title="html" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk2-2" style="background-image: url('<%=request.getContextPath()%>/resources/images/css.png');" title="css" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk2-3" style="background-image: url('<%=request.getContextPath()%>/resources/images/javascript.png');" title="javascript" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk2-4" style="background-image: url('<%=request.getContextPath()%>/resources/images/jquery.png');" title="jquery" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk2-5" style="background-image: url('<%=request.getContextPath()%>/resources/images/nodejs.png'); opacity:0.5;" title="nodejs" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);">Study</div>
				</div>
				<h2 style="font-weight: bolder; font-size: 30px;">etc</h2>
				<div id="SkillsDiv">
					<div id="sk3-1" style="background-image: url('<%=request.getContextPath()%>/resources/images/oracle.png');" title="oracle" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk3-2" style="background-image: url('<%=request.getContextPath()%>/resources/images/springFramework.png');" title="springFramework" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);"></div>
					<div id="sk3-3" style="background-image: url('<%=request.getContextPath()%>/resources/images/github.png'); opacity:0.5;" title="github" onmouseenter="boxEnter(this);" onmouseleave="boxLeave(this);">Study</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>