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
	<!-- JSTL 사용 -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<% String type = (String)request.getAttribute("type"); %>
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
	section #type1{
		width: 100%;
		height: 80%;
		background-color: white;
		position: relative;
	}
	
	section #type1 img{
		display: inline-block;
		width: 70px;
		height: 70px;
		position: absolute;
	}
	section #type1 div{
		width: 80%;
		height: 75%;
		background: lightgray;
		margin-top: 3%;
		display:inline-block;
		margin-left: 10%;
	}
	section #type1 div img{
		width: 80%;
		height: 75%;
	}
	section #type1 #left{
		top: 218;
		left: 35;
	}
	section #type1 #right{
		top: 218;
		right: 35;
	}
	section #type2{
		width: 100%;
		height: 80%;
		background-color: white;
	}
	section #type3{
		width: 100%;
		height: 80%;
		background-color: white;
	}
	section > div{
		width: 100%;
		position: absolute;
		font-family: 'Spoqa Han Sans';
	}
	section #div0{
		width: 100%;
		height: 92%;
		background: white;
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
	section #div2 .card{
		display: inline-block;
	}
	section #div2 .card img{
		width: 286px;
		height: 250px;
	}
	section #div2 .card p{
		font-size: 14px;	
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
	function leftBtn(){
		<%if(type != null){%>
			
		<%if(type.equals("클루보드게임")){%>
			if(step == 1){
				$("#clue1")[0].hidden = true;
				$("#clue4")[0].hidden = false;
				step=4;
			}
			else if(step == 2){
				$("#clue2")[0].hidden = true;
				$("#clue1")[0].hidden = false;
				step--;
			}
			else if(step == 3){
				$("#clue3")[0].hidden = true;
				$("#clue2")[0].hidden = false;
				step--;
			}
			else if(step == 4){
				$("#clue4")[0].hidden = true;
				$("#clue3")[0].hidden = false;
				step--;
			}
		<%}%>
		<%if(type.equals("이웃집토토중")){%>
			if(step == 1){
				$("#toto1")[0].hidden = true;
				$("#toto6")[0].hidden = false;
				step=6;
			}
			else if(step == 2){
				$("#toto2")[0].hidden = true;
				$("#toto1")[0].hidden = false;
				step--;
			}
			else if(step == 3){
				$("#toto3")[0].hidden = true;
				$("#toto2")[0].hidden = false;
				step--;
			}
			else if(step == 4){
				$("#toto4")[0].hidden = true;
				$("#toto3")[0].hidden = false;
				step--;
			}
			else if(step == 5){
				$("#toto5")[0].hidden = true;
				$("#toto4")[0].hidden = false;
				step--;
			}
			else if(step == 6){
				$("#toto6")[0].hidden = true;
				$("#toto5")[0].hidden = false;
				step--;
			}
		<%}%>
		<%if(type.equals("즐랙")){%>
			if(step == 1){
				$("#zlack1")[0].hidden = true;
				$("#zlack7")[0].hidden = false;
				step=7;
			}
			else if(step == 2){
				$("#zlack2")[0].hidden = true;
				$("#zlack1")[0].hidden = false;
				step--;
			}
			else if(step == 3){
				$("#zlack3")[0].hidden = true;
				$("#zlack2")[0].hidden = false;
				step--;
			}
			else if(step == 4){
				$("#zlack4")[0].hidden = true;
				$("#zlack3")[0].hidden = false;
				step--;
			}
			else if(step == 5){
				$("#zlack5")[0].hidden = true;
				$("#zlack4")[0].hidden = false;
				step--;
			}
			else if(step == 6){
				$("#zlack6")[0].hidden = true;
				$("#zlack5")[0].hidden = false;
				step--;
			}
			else if(step == 7){
				$("#zlack7")[0].hidden = true;
				$("#zlack6")[0].hidden = false;
				step--;
			}
		<%}
		}%>
		
	}
	function rightBtn(){
		<%if(type != null){%>
		<%if(type.equals("클루보드게임")){%>
			if(step == 1){
				$("#clue1")[0].hidden = true;
				$("#clue2")[0].hidden = false;
				step++;
			}
			else if(step == 2){
				$("#clue2")[0].hidden = true;
				$("#clue3")[0].hidden = false;
				step++;
			}
			else if(step == 3){
				$("#clue3")[0].hidden = true;
				$("#clue4")[0].hidden = false;
				step++;
			}
			else if(step == 4){
				$("#clue4")[0].hidden = true;
				$("#clue1")[0].hidden = false;
				step=1;
			}
		<%}%>
		<%if(type.equals("이웃집토토중")){%>
			if(step == 1){
				$("#toto1")[0].hidden = true;
				$("#toto2")[0].hidden = false;
				step++;
			}
			else if(step == 2){
				$("#toto2")[0].hidden = true;
				$("#toto3")[0].hidden = false;
				step++;
			}
			else if(step == 3){
				$("#toto3")[0].hidden = true;
				$("#toto4")[0].hidden = false;
				step++;
			}
			else if(step == 4){
				$("#toto4")[0].hidden = true;
				$("#toto5")[0].hidden = false;
				step++;
			}
			else if(step == 5){
				$("#toto5")[0].hidden = true;
				$("#toto6")[0].hidden = false;
				step++;
			}
			else if(step == 6){
				$("#toto6")[0].hidden = true;
				$("#toto1")[0].hidden = false;
				step=1;
			}
		<%}%>
		<%if(type.equals("즐랙")){%>
			if(step == 1){
				$("#zlack1")[0].hidden = true;
				$("#zlack2")[0].hidden = false;
				step++;
			}
			else if(step == 2){
				$("#zlack2")[0].hidden = true;
				$("#zlack3")[0].hidden = false;
				step++;
			}
			else if(step == 3){
				$("#zlack3")[0].hidden = true;
				$("#zlack4")[0].hidden = false;
				step++;
			}
			else if(step == 4){
				$("#zlack4")[0].hidden = true;
				$("#zlack5")[0].hidden = false;
				step++;
			}
			else if(step == 5){
				$("#zlack5")[0].hidden = true;
				$("#zlack6")[0].hidden = false;
				step++;
			}
			else if(step == 6){
				$("#zlack6")[0].hidden = true;
				$("#zlack7")[0].hidden = false;
				step++;
			}else if(step == 7){
				$("#zlack7")[0].hidden = true;
				$("#zlack1")[0].hidden = false;
				step=1;
			}
		<%}
		}%>
	}
	var step =1;
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
			<c:if test="${type=='클루보드게임'}">
				<div id="type1">
					<img id="left" src="<%=request.getContextPath()%>/resources/images/왼쪽화살표.png" alt="왼쪽화살표" onclick="leftBtn();"/>
					<div>
						<img id="clue1" src="<%=request.getContextPath()%>/resources/images/클루1.png" alt="클루1" />
						<img id="clue2" src="<%=request.getContextPath()%>/resources/images/클루2.png" hidden alt="클루2" />
						<img id="clue3" src="<%=request.getContextPath()%>/resources/images/클루3.png" hidden alt="클루3" />
						<img id="clue4" src="<%=request.getContextPath()%>/resources/images/클루4.png" hidden alt="클루4" />
					</div>
					<img id="right" src="<%=request.getContextPath()%>/resources/images/오른쪽화살표.png" alt="오른쪽화살표" onclick="rightBtn();" />
				</div>
			</c:if>
			<c:if test="${type=='이웃집토토중'}">
				<div id="type1">
					<img id="left" src="<%=request.getContextPath()%>/resources/images/왼쪽화살표.png" alt="왼쪽화살표" onclick="leftBtn();"/>
					<div>
						<img id="toto1" src="<%=request.getContextPath()%>/resources/images/토토1.png" alt="토토1" />
						<img id="toto2" src="<%=request.getContextPath()%>/resources/images/토토2.png" hidden alt="토토2" />
						<img id="toto3" src="<%=request.getContextPath()%>/resources/images/토토3.png" hidden alt="토토3" />
						<img id="toto4" src="<%=request.getContextPath()%>/resources/images/토토4.png" hidden alt="토토4" />
						<img id="toto5" src="<%=request.getContextPath()%>/resources/images/토토5.png" hidden alt="토토5" />
						<img id="toto6" src="<%=request.getContextPath()%>/resources/images/토토6.png" hidden alt="토토6" />
					</div>
					<img id="right" src="<%=request.getContextPath()%>/resources/images/오른쪽화살표.png" alt="오른쪽화살표" onclick="rightBtn();" />
				</div>
			</c:if>
			<c:if test="${type=='즐랙'}">
				<div id="type1">
					<img id="left" src="<%=request.getContextPath()%>/resources/images/왼쪽화살표.png" alt="왼쪽화살표" onclick="leftBtn();"/>
					<div>
						<img id="zlack1" src="<%=request.getContextPath()%>/resources/images/즐랙1.png" alt="즐랙1" />
						<img id="zlack2" src="<%=request.getContextPath()%>/resources/images/즐랙2.png" hidden alt="즐랙2" />
						<img id="zlack3" src="<%=request.getContextPath()%>/resources/images/즐랙3.png" hidden alt="즐랙3" />
						<img id="zlack4" src="<%=request.getContextPath()%>/resources/images/즐랙4.png" hidden alt="즐랙4" />
						<img id="zlack5" src="<%=request.getContextPath()%>/resources/images/즐랙5.png" hidden alt="즐랙5" />
						<img id="zlack6" src="<%=request.getContextPath()%>/resources/images/즐랙6.png" hidden alt="즐랙6" />
						<img id="zlack7" src="<%=request.getContextPath()%>/resources/images/즐랙7.png" hidden alt="즐랙7" />
					</div>
					<img id="right" src="<%=request.getContextPath()%>/resources/images/오른쪽화살표.png" alt="오른쪽화살표" onclick="rightBtn();" />
				</div>
			</c:if>	
			<div id="div1">
				<c:if test="${type=='클루보드게임'}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">클루보드게임</p>
					<p style="font-size: 20px;"> ＊참여한 프로젝트에 대해 설명합니다. ＊ </p>
				</c:if>
				<c:if test="${type=='이웃집토토중'}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">이웃집토토중</p>
					<p style="font-size: 20px;"> ＊참여한 프로젝트에 대해 설명합니다. ＊ </p>
				</c:if>
				<c:if test="${type=='즐랙'}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">즐랙</p>
					<p style="font-size: 20px;"> ＊참여한 프로젝트에 대해 설명합니다. ＊ </p>
				</c:if>
				<c:if test="${type=='' || type==null}">	
					<p style="font-size: 40px; font-weight: bolder; color: white;">Project</p>
					<p style="font-size: 20px;"> ＊참여한 프로젝트에 대해 설명합니다. ＊ </p>
				</c:if>
			</div>
			<div id="div2">
				<div class="card" style="width: 18rem;">
				  <img src="<%=request.getContextPath()%>/resources/images/클루보드게임.png" class="card-img-top" alt="클루보드게임">
				  <div class="card-body">
				    <h5 class="card-title">클루보드게임</h5>
				    <p class="card-text">자바의 기초문법들과 GUI만 배운 상황에서 다양한 조건문과 GUI를 구현할 수 있는 보드게임을 제작하고자 하였고, 팀원들과의 토의 결과 클루보드게임이 채택되어 개발하게 되었습니다. </p>
				    <a href="<%=request.getContextPath()%>/main/project?type=클루보드게임" class="btn btn-primary">구현한 부분 보기</a>
				    <a href="#" class="btn btn-primary">GitHub</a>
				  </div>
				</div>
				
				<div class="card" style="width: 18rem;">
				  <img src="<%=request.getContextPath()%>/resources/images/이웃집토토중.png" class="card-img-top" alt="이웃집토토중">
				  <div class="card-body">
				    <h5 class="card-title">이웃집토토중</h5>
				    <p class="card-text">도박으로 인해 파산과 돈 문제를 겪고 있는 사람들을 주변에서종종 볼 수 있는데, 모의 토토사이트를 실전처럼 즐길 수 있게 홈페이지를 설계하고 도박에 실제 돈을 걸어 파산하는 것을 방지하기 위한 모의 토토사이트 개발</p>
				    <a href="<%=request.getContextPath()%>/main/project?type=이웃집토토중" class="btn btn-primary">구현한 부분 보기</a>
				    <a href="#" class="btn btn-primary">GitHub</a>
				  </div>
				</div>
				
				<div class="card" style="width: 18rem;">
				  <img src="<%=request.getContextPath()%>/resources/images/즐랙.png" class="card-img-top" alt="즐랙">
				  <div class="card-body">
				    <h5 class="card-title">즐랙</h5>
				    <p class="card-text">6개월간의 교육에 쓰인 개발자 메신저프로그램 Slack을 벤치마킹하여 구현할 수 있는 기능들은 모두 구현하고, 국내 개발환경에 적합한 메신저 프로그램으로 개발</p>
				    <a href="<%=request.getContextPath()%>/main/project?type=즐랙" class="btn btn-primary">구현한 부분 보기</a>
				    <a href="#" class="btn btn-primary">GitHub</a>
				  </div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>