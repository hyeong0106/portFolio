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
	<% String btnType = (String)request.getAttribute("btnType"); %>
	
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
	section #type1{
		width: 100%;
		height: 92%;
		background: white;
	}
	section #type1 img{
		width: 90%;
		height: 80%;
		margin-left: 5%;
	}
	section #type2{
		width: 100%;
		height: 80%;
		background: white;
	}
	section #type2 table{
		width:60%;
		height: 70%;
		margin-left: 20%;
		margin-top: 5%;
		text-align: center;
	}
	section #type2 table thead{
		background: pink;
		color: white;
		font-size: 20px;
		border: 1px solid lightgray;
	}
	section #type2 table tbody{
		border: 1px solid lightgray;
		box-shadow: 0 3px 6px lightgray, 0 3px 6px lightgray;
	}
	section #type3{
		width: 100%;
		height: 80%;
		background: white;
	}
	section #type3 div{
		width: 30%;
		height: 70%;
		display: inline-block;
		margin-left: 2%;
		margin-top: 5%;
		text-align: center;
	}
	section #type3 img{
		width: 65%;
		height: 60%;
	}
	section #type4{
		width: 100%;
		height: 80%;
		background: white;
	}
	section #type4 table{
		width:70%;
		height: 50%;
		margin-left: 15%;
		margin-top: 8%;
		text-align: center;
	}
	section #type4 table thead{
		background: pink;
		color: white;
		font-size: 20px;
		border: 1px solid lightgray;
	}
	section #type4 table tbody{
		border: 1px solid lightgray;
		box-shadow: 0 3px 6px lightgray, 0 3px 6px lightgray;
	}
	section #type5{
		width: 100%;
		height: 80%;
		background: white;
	}
	section #type5 #JopSkillsType{
		width: 100%;
		height: 17%;
		margin-top: 2%;
		font-size: 22px;
		padding-left: 15%;
		font-family: 'Spoqa Han Sans';
	}
	section #type5 #JopSkillsType button{
		height: 50%;
		width: 9%;
		background: lightgray;
		color: black;
		border: lightgray;
	}
	section #type5 #JopSkillsContents{
		height: 60%;
		width: 70%;
		margin-left: 15%;
		border: 2px solid lightgray;
		overflow: scroll;
	}
	section #type6{	
		width: 100%;
		height: 80%;
		background-color: white;
	}
	section #type6 > div{
		width: 90%;
		height: 80%;
		margin-left: 5%;
		margin-top: 4%;
	}
	section #type6 .card-body{
		overflow: scroll;
		height: 300px;
	}
	
	section #div1{
		height: 200px;
		background: pink;
		color: #182153;
		bottom: 0;
		text-align: center;
		padding-top: 37px;
	}
	section #div2{
		bottom: -535;
		height: 535px;
		color: #182153;
		background: pink;
	}
	section .area{
	    width: 25%;
	    height: 40%;
	    display: inline-block;
	    background-color: #ffffff;
	    border: 2px double lightgray;
	    text-align: center;
	}
	section .area:hover{
	    background-color: lightblue;
	    border: 5px solid #002a36;
	    transition: 0.5s;
	}
	section .area img{
	    width: 40%;
	    height: 65%;
	}
	section #area1, #area4 {
		margin-left: 12.5%;
	}
	section #area4, #area5, #area6 {
		margin-top: 0.3%;
	}
	
	section .boxBtn{
	    width: 60%;
	    height: 23%;
	    font-size: 22px;
	    transition:1s;
	    font-family: Spoqa Han Sans;
	    color: white;
	}
	section .boxBtn:hover{
	  background:white;
	  color:black;
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
	function boxBtnClick(e){
		location.href = "<%=request.getContextPath()%>/main/introduce?type="+e.innerText;
	}
	function btnClick(e){
		var id = e.attributes[5].value;
		if($("#"+id)[0].className == 'collapse'){	
			if($(".show")[0] != undefined){
				$(".show")[0].className = 'collapse';
			}
			$("#"+id)[0].className = 'collapse show';
		}
		else if($("#"+id)[0].className == 'collapse show'){	
			$("#"+id)[0].className = 'collapse';
		}
	}
	
	$(function(){
    	var btnType = "<%=btnType%>"
    	
    	if(btnType==" " || btnType=="null" || btnType=="지식"){
    		$("#knowledgeBtn").css({"background": "#c82333", "color":"white", "border": "1px solid #bd2130"});
    	}
    	else if(btnType=="기술"){
    		$("#skillBtn").css({"background": "#c82333", "color":"white", "border": "1px solid #bd2130"});
    	}
    	else if(btnType=="태도"){
    		$("#attitudeBtn").css({"background": "#c82333", "color":"white", "border": "1px solid #bd2130"});
    	}else if(btnType=="목표"){
    		$("#goalBtn").css({"background": "#c82333", "color":"white", "border": "1px solid #bd2130"});
    	}
    });
    function clickMenu(e){
    	var btnType = e.innerHTML;
    	location.href="${pageContext.request.contextPath }/main/introduce?type=직무능력소개&btnType="+btnType;
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
			<c:if test="${type eq '학력사항'}">
				<div id="type1">
					<img src="<%=request.getContextPath() %>/resources/images/학력사항리스트.png" alt="학력사항리스트" />
				</div>
			</c:if>
			<c:if test="${type eq '자격증'}">
				<div id="type2">
					<table class="table">
					 <thead>
					 	<tr>
					 		<th>자격면허</th>
					 		<th>취득년월</th>
					 		<th>발행처</th>
					 	</tr>
					 </thead>
				  	 <tbody>
					    <tr>
					      <td>정보처리산업기사</td>
					      <td>2016년 05월</td>
					      <td>한국산업인력공단</td>
					    </tr>
					    <tr>
					      <td>사무자동화산업기사</td>
					      <td>2019년 08월</td>
					      <td>한국산업인력공단</td>
					    </tr>
					    <tr>
					      <td>ITQ 한글액세스</td>
					      <td>2015년 12월</td>
					      <td>한국생산성본부</td>
					    </tr>
					     <tr>
					      <td>GTQ 2급</td>
					      <td>2015년 11월</td>
					      <td>한국생산성본부</td>
					    </tr>
					     <tr>
					      <td>ITQ 아래한글</td>
					      <td>2015년 05월</td>
					      <td>한국생산성본부</td>
					    </tr>
					     <tr>
					      <td>ITQ 한글엑셀</td>
					      <td>2015년 05월</td>
					      <td>한국생산성본부</td>
					    </tr>
					     <tr>
					      <td>ITQ 한글파워포인트</td>
					      <td>2008년 11월</td>
					      <td>한국생산성본부</td>
					    </tr>
					  </tbody>
					</table>
				</div>
			</c:if>
			<c:if test="${type eq '사회경험'}">
				<div id="type3">
					<div>
					<img src="<%=request.getContextPath()%>/resources/images/사회경험.png" alt="편의점" />
					<p style="font-size: 25px; "> 편의점 </p>
					<p style="font-size: 20px; "> 2014년 12월 ~ 2016년 08월 </p>
					<p style="font-size: 20px; "> 2018년 06월 ~ 2019년 09월 </p>
					<p style="color: red">3년 1개월</p>
					</div>
					<div>
					<img src="<%=request.getContextPath()%>/resources/images/학과조교.png" alt="학과조교" />
					<p style="font-size: 25px;"> 학과조교 </p>
					<p style="font-size: 20px; "> 2015년 12월 ~ 2016년 08월 </p>
					<br />
					<p style="color: red">9개월</p>
					</div>
					<div>
					<img src="<%=request.getContextPath()%>/resources/images/관공서알바.png" alt="관공서" />
					<p style="font-size: 25px;"> 관공서 </p>
					<p style="font-size: 20px; "> 2018년 07월 ~ 2018년 08월 </p>
					<br />
					<p style="color: red">2개월</p>
					</div>
				</div>
			</c:if>
			<c:if test="${type eq '수상경력'}">
				<div id="type4">
					<table class="table">
					 <thead>
					 	<tr>
					 		<th>수상명</th>
					 		<th>등급(위)</th>
					 		<th>수상년월</th>
					 		<th>수여기관</th>
					 	</tr>
					 </thead>
				  	 <tbody>
					    <tr>
					      <td>서정 창의성 경진대회 학업 UCC공모전</td>
					      <td>격려상(4위)</td>
					      <td>2018년 12월</td>
					      <td>서정대학교 교수학습지원센터</td>
					    </tr>
					    <tr>
					      <td>2018 창업동아리 경진대회</td>
					      <td>금상(2위)</td>
					      <td>2018년 10월</td>
					      <td>서정대학교 대학일자리본부</td>
					    </tr>
					    <tr>
					      <td>스마터 창작터 창업동아리 경진대회</td>
					      <td>금상(2위)</td>
					      <td>2015년 12월</td>
					      <td>서정대학교 창업지원센터</td>
					    </tr>
					  </tbody>
					</table>
				</div>
			</c:if>
			<c:if test="${type eq '직무능력소개'}">
				<div id="type5">
					<div id="JopSkillsType">
						<p>직무능력소개</p>
			            <button id="knowledgeBtn" onclick="clickMenu(this)" class="btn btn-danger">지식</button>
			            <button id="skillBtn" onclick="clickMenu(this)" class="btn btn-danger">기술</button>
			            <button id="attitudeBtn" onclick="clickMenu(this)" class="btn btn-danger">태도</button>
			            <button id="goalBtn" onclick="clickMenu(this)" class="btn btn-danger">목표</button>
		            </div>
		            <div id="JopSkillsContents">
						<c:if test="${btnType == '' || btnType == null || btnType == '지식' }">
							<p style="font-size: 18px; font-weight: bolder;">지원분야에 필요한 직무능력을 습득하기 위해 받은 교육[학교/직업교육]에 대해 기술하시오. (분야, 교육 내용, 향상 노력, 성과 등)</p>
							<p style="color: #135ca0; font-size: 17px">[부족한 부분을 파악하여 꾸준히 자기 개발하는 인재]</p>
							<p style="font-size: 16px;">세 번의 프로젝트를 통해 전체적인 웹 개발에 대해 자신감을 가지게 되었습니다. 대학교에서는 전체적인 IT 직무의 기본을 학습함으로써 배경지식을 익히기에는 충분하였지만, 실제 실무에 적용하기에는 부족하다는 생각이 들었습니다. 부족한 기술 실력을 채우기 위해 교육 과정을 찾던 중 국비지원 교육을 알게 되어 6개월 동안 웹 개발에 대한 전체적인 교육과 세 번의 프로젝트를 진행하며 직무역량을 강화하였습니다. 특히 수업에서 배운 내용을 프로젝트에 직접 적용시키면서 배운 내용을 제대로 이해하고 있는지 스스로 확인하고, 이해하지 못한 부분이 있으면 그것을 다시 학습해 적용함으로써 실력을 크게 향상시킬 수 있는 계기가 되었습니다. 이로 인해 웹 개발의 전체적인 흐름을 알게 되었고, 전체적인 구조와 기본적인 기능들을 구현할 수 있게 되었습니다.</p>
						</c:if>
						<c:if test="${btnType == '기술'}">
							<p style="font-size: 18px; font-weight: bolder;">가장 자신 있는 기술(또는 흥미를 가지고 공부한 기술)에 대해 설명하고 프로젝트에 접목시켜 이룬 성과가 무엇인지 기술하시오.</p>
							<p style="color: #135ca0; font-size: 17px">[원하는 기능을 직접 구현해보며 실력을 발전시켰습니다]</p>
							<p style="font-size: 16px;">팀원들과의 프로젝트주제 선정을 위한 토의결과 팀장님의 의견인 토토사이트와 저의 의견인 쇼핑몰이 최종 주제로 선정되었습니다. 그래서 저희는 토토사이트를 메인주제로 하고 포인트 상점을 통해 쇼핑몰의 일부분도 구현하고자 했습니다. 프로젝트에서 포인트 상점에 대한 전반적인 기능들을 담당하며 MVC패턴을 활용하여 사용자가 포인트 상점에서 아이템 구매와 같은 특정한 행동을 할 경우 controller -≫ service -≫ dao -≫ db로 접속하여 DML을 사용하여 테이블을 업데이트 하였고, 배경 및 뱃지 아이템을 HTML Header부분에 적용할 때 유지가 안 되는 문제가 발생 하여 session에 저장해 지속적으로 참조하도록 해서 유지시키도록 하였습니다. 이후 룰렛게임, 가위바위보 게임소스를 웹에서 찾아 프로젝트에 맞게 원하는 값으로 데이터를 수정하거나 CSS를 변경하는 등 소스 일부를 변경하고, 결과 데이터를 메인 JSP에 전송을 하는 등 목표한 기능을 성공적으로 구현하였습니다. 이외에도 파이널프로젝트에서는 구글차트 API를 사용해 통계를 구현하였고, 평소 ASP의 ≪%= ％＞를 사용해 코딩을 하는 방식에서 벗어나 AJAX를 쓰거나 EL과 JSTL태그를 최대한 사용해서 다른 방식으로도 기능을 구현해보려고 노력했습니다. 향후 실무 업무에 있어서도 프로젝트를 진행하면서 익힌 다양한 기능들과 기술들을 효과적으로 활용하여 조직에 기여할 수 있다고 확신합니다.</p>
						</c:if>
						<c:if test="${btnType == '태도'}">
							<p style="font-size: 18px; font-weight: bolder;">본인이 참여하여 수행한 프로젝트에서 어렵거나 힘들었던 문제의 상황을 설명하고 어떠한 과정을 거쳐 해결하였는지 구체적으로 설명하시오. (문제 원인 도출, 해결방안 탐색, 해결방안 적용 등)</p>
							<p style="color: #135ca0; font-size: 17px">[서로 함께 돕고, 배우고, 배려하며 프로젝트를 성공적으로 완성하다]</p>
							<p style="font-size: 16px;">문제 해결방안을 알려주고, 배려해줌으로써 비전공자의 프로젝트 기여도를 올렸습니다. 프로젝트의 경우 서로 같은 목표를 향해 개발을 진행하기 때문에 팀원 간의 화합이 중요합니다. 프로젝트를 진행 하던 중 같은 팀원이 기능구현에 어려움을 겪고 있었는데 그 팀원은 비전공자였고, 프로젝트 진행 이전에도 수업에 어려움을 겪고 있었습니다. 이대로 프로젝트를 진행하다보면 그 팀원의 기여도가 낮아질 것이라는 생각에 쉬는 시간에 해당 팀원에게 찾아가 어떠한 기능 구현에 어려움을 겪고 있는지 파악했습니다. 확인한 결과 그 팀원은 에러가 자주 발생하고 어느 부분에서 에러가 발생했는지 찾는데 어려움을 겪고 있었습니다. 그래서 저의 경우에는 콘솔 창에 있는 오류를 해석하거나 웹에 검색해서 오류가 무엇인지 찾아 해결한다고 알려줬습니다. 그리고 가장 많이 나는 오류인 404는 연결이 제대로 되지 않아서 발생하는 오류고, 나머지는 오타로 인해 발생하는 에러가 대부분이라고 설명해주었습니다. 그 결과 그 팀원은 대부분의 오류를 스스로 찾아서 해결하는 노력을 하였고, 다른 팀원들이 스스로 그 팀원을 찾아가 어려운 부분을 알려주고 기다려줌으로써 기여도를 높일 수 있도록 배려해주었습니다. 저는 이러한 도움과 배려가 직무에 있어서 팀원 간의 사이를 돈독하게 만들어주어 프로젝트개발에 큰 영향을 미칠 것이라 자부합니다.</p>
						</c:if>
						<c:if test="${btnType == '목표'}">
							<p style="font-size: 18px; font-weight: bolder;">입사 후 이루고 싶은 목표가 무엇인지 제시하고 그 목표를 이루기 위해 어떠한 노력을 할 것인지 기술하시오.</p>
							<p style="color: #135ca0; font-size: 17px">[모두가 찾게 되는 개발자가 될 것입니다]</p>
							<p style="font-size: 16px;">탄탄한 실력을 기반으로 회사의 발전에 크게 기여하여 모두가 찾는 개발자가 되는 것이 목표입니다. 이를 위해 먼저 회사의 방향성을 파악하고 필요한 역량을 갖추는데 집중하겠습니다. 더불어 IT는 기술이 변화하는 속도가 점차 증가하고 있기 때문에, 그 트렌트에 맞춰 신기술을 받아들일 수 있는 태도와 기반을 다지고, 이를 프로젝트에 접목할 수 있도록 기여할 것이며 끊임없는 회고를 통해 부족한 부분을 보완하며 모두가 필요로 하는 개발자가 될 것입니다. 현재 학사학위를 취득하기 위해 학점은행제도에서 인정이 되는 자격증인 정보처리산업기사를 취득하였고, 최근에는 사무자동화산업기사 실기시험을 치러 합격자 발표를 기다리고 있습니다. 최대 3개의 자격증이 인정되기 때문에 추가로 컴퓨터활용능력 1급을 준비하고 있습니다. 경력이 쌓여 기사시험 자격이 생기면 정보처리기사 자격증 시험을 치루는 등 끊임없이 발전하는 개발자가 될 것입니다.</p>
						</c:if>
					</div>
				</div>
			</c:if>
			<c:if test="${type eq '자기소개'}">
				<div id="type6">
					<div class="accordion" id="accordionExample">
					  <div class="card">
					    <div class="card-header" id="headingOne">
					      <h2 class="mb-0">
					        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" onclick="btnClick(this)">
					        	자기소개
					        </button>
					      </h2>
					    </div>
					    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
					      <div class="card-body">
						      <p style="font-size: 18px; font-weight: bolder;">본인의 직무 또는 인성 역량을 드러낼 수 있는 키워드를 선정하고, 이를 나타낼 수 있는 구체적인 사례를 활용하여 자기소개를 작성하시오.</p>
						      <p style="color: #135ca0;">저는 함께하고 싶은 매력이 있는 것 같습니다.</p>
							  <p>그것을 자주 깨닫게 된 것은 주로 아르바이트를 하면서였습니다. 수능이 끝난 후부터 최근까지 같은 점주님과 함께 편의점 아르바이트를 하였습니다. 비록 군 입대로 인해 아르바이트를 그만뒀었지만 점주님께서 계속 연락해주셨고, 결국에는 전역 후에도 알바자리를 제안해주셔서 최근까지도 같이 하게 되었습니다. 이러한 경험은 학과 조교 업무를 맡았을 때에도 이어졌습니다. 군 입대로 인해 조교 업무를 계속할 수 없게 되자 학과장님께서는 아쉬워하시며 졸업 후에 군대에 입대하면 어떻겠냐는 제안을 하시기도 했습니다. 이렇듯 저는 업무를 함께했던 사람들로부터 다시 한 번 함께 일해보지 않겠냐는 제안을 자주 받습니다. 제 생각에는 제가 항상 다른 사람들을 배려하는 태도로 지내기 때문인 것 같습니다. 저는 항상 다른 사람의 편의를 생각하고 움직이는 편입니다. 편의점 알바를 할 때에도 제 청소구역이 끝나고 시간적인 여유가 있으면 다음 교대자의 청소구역을 청소해주었고, 이외에도 할 일을 찾아 항상 움직였습니다. 팀 과제에서 어려운 부분이 있어 팀원들이 주저하고 있으면 제가 나서서 그 부분은 제가 하겠다고 말하며 해결해주려고 노력합니다. 이처럼 함께하고 싶은 매력은 사회생활에 있어 큰 강점으로 작용할 것이며, 다른 사람들을 배려하는 태도 이외에도 저와 함께하고 싶어 하는 이유는 더 많을 것이라고 자부합니다. 이러한 강점을 가지고 앞으로의 조직사회에서 끊임없이 발전해나갈 것입니다.</p>
						 </div>
					    </div>
					  </div>
					  <div class="card">
					    <div class="card-header" id="headingTwo">
					      <h2 class="mb-0">
					        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" onclick="btnClick(this)">
					         	성격의 장/단점
					        </button>
					      </h2>
					    </div>
					    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
					      <div class="card-body">
					      	  <p style="font-size: 18px; font-weight: bolder;">본성격의 장/단점에 대해 기술하고 이를 보여주는 구체적인 사례를 함께 작성하시오. (단점 작성 시, 보완 노력 포함)</p>
						      <p style="color: #135ca0;">저는 상대를 존중하는 태도로 어떤 상황도 대처할 수 있는 성격의 소유자입니다. </p>
						      <p style="color: #135ca0;">문제 상황에서 긍정적으로 생각하고, 상대를 배려함으로써 침착하게 상황을 극복해 나갑니다. </p>
							  <p>세븐일레븐 아르바이트를 하면서 많은 무리한 요구를 듣곤 했습니다. 한 번은 어떤 할머니께서 저희 매장 제품이 아니지만 저희 매장에서 구매한 것이라고 하시면서 환불을 요구하는 상황이 있었습니다. 그때 저는 침착하게 그 물건의 구매처를 파악하고자 할머니께 영수증의 유무를 여쭤보았고, 다행히 할머니께서 영수증을 가지고 계서서 제대로 된 구매처를 알려줌으로써 해결할 수 있었습니다. 이외에도 가격 할인을 요구하거나, 노숙인이 찾아와 음료수를 줄 것을 요구하는 등의 상황이 있었습니다. 그럴 때 마다 저는 손님이 충분히 납득할 수 있도록 아르바이트생이기 때문에 물건을 할인해주거나 음료를 무료로 제공해 드릴 수 있는 권한이 없음을 안내하였고 제가 처리할 수 있는 범위 내에서 서비스를 제공하며 다음에는 할인, 제공이 힘들다는 점을 얘기하여 이와 같은 상황이 반복되지 않게 하였습니다. 이러한 상황 대처능력으로 직무를 수행하면서 만나는 다양한 문제 상황을 유연하게 극복해 나갈 것이며, 예측 불가능한 미래 IT기술에 대해서 민첩하게 적응할 것입니다.</p>
							  <p>다만, 상대를 배려하려다 보니 요구에 거절을 잘 못하는 편입니다. 때문에 업무가 과하게 몰리는 상황이 빈번하게 발생했고 스스로에게 많은 부담으로 다가왔습니다. 이러한 문제를 개선하기 위해 상대방의 요구에 바로 대답하지 않고 시간을 가지고 생각을 충분히 한 후, 거절하는 것이 옳다고 생각될 땐 상대방의 기분이 상하지 않는 선에서 거절을 하도록 노력을 하고 있습니다.</p>
					      </div>
					    </div>
					  </div>
					</div>
				</div>
			</c:if>
			<div id="div1">
				<c:if test="${type eq '' or type eq null}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">Introduce</p>
					<p style="font-size: 20px;"> 저의 목표는 모두가 필요로 하는 개발자가 되는 것입니다. : ) </p>
				</c:if>
				<c:if test="${type eq '학력사항'}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">학력사항</p>
					<p style="font-size: 20px;">현재 저는 서정대학교 2년제 전문대학교를 4.43학점으로 졸업한 뒤 6개월간의 국비지원교육을 수료하여 취업준비 중에 있습니다.</p>
				</c:if>
				<c:if test="${type eq '자격증'}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">자격증</p>
					<p style="font-size: 20px;">현재 2개의 산업기사자격증, 4개의 ITQ자격증, 1개의 GTQ자격증을 보유하고 있습니다.</p>
					<p style="font-size: 17px; color : red">＊추가로 컴활1급과 정보처리기사 자격증 취득을 목표로 잡고있습니다.＊</p>
				</c:if>
				<c:if test="${type eq '사회경험'}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">사회경험</p>
					<p style="font-size: 20px;">친절함과 성실함을 바탕으로 같은 사업장에서의 아르바이트를 지속적으로 진행하였습니다.</p>
				</c:if>
				<c:if test="${type eq '수상경력'}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">수상경력</p>
					<p style="font-size: 20px;"> 교내에서 진행한 2번의 창업대회와 UCC대회에서 위와 같은 성적을 달성하였습니다. </p>
					<p style="font-size: 17px; color : red">＊이를 통해 고객의 니즈와 경쟁사를 분석하고 문제점을 파악하는 등의 분석력과 도전정신을 배웠습니다.＊</p>
				</c:if>
				<c:if test="${type eq '직무능력소개'}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">직무능력소개</p>
					<p style="font-size: 20px;"> 지식, 기술, 태도, 목표에 대한 4가지 직무능력소개서를 작성하였습니다. </p>
				</c:if>
				<c:if test="${type eq '자기소개'}">
					<p style="font-size: 40px; font-weight: bolder; color: white;">자기소개</p>
					<p style="font-size: 20px;"> 저의 가장 큰 특징에 대한 설명과 성격의 장.단점을 서술하였습니다.</p>
				</c:if>
			</div>
			<div id="div2">
				<div class="area" id="area1">
	                <br>
	                <img src="<%=request.getContextPath()%>/resources/images/학력사항.png" alt="userImg">
	                <button class="btn btn-warning boxBtn" onclick="boxBtnClick(this);">학력사항</button>
	            </div>
	            <div class="area" id="area2">
	                <br>
	                <img src="<%=request.getContextPath()%>/resources/images/자격증.png" alt="userImg">
	                <button class="btn btn-warning boxBtn" onclick="boxBtnClick(this);">자격증</button>
	            </div>
	            <div class="area" id="area3">
	                <br>
	                <img src="<%=request.getContextPath()%>/resources/images/사회경험.png" alt="userImg">
	                <button class="btn btn-warning boxBtn" onclick="boxBtnClick(this);">사회경험</button>
	            </div>
	            <div class="area" id="area4">
	                <br>
	                <img src="<%=request.getContextPath()%>/resources/images/수상경력.png" alt="userImg">
	                <button class="btn btn-warning boxBtn" onclick="boxBtnClick(this);">수상경력</button>
	            </div>
	            <div class="area" id="area5">
	                <br>
	                <img src="<%=request.getContextPath()%>/resources/images/직무능력소개.png" alt="userImg">
	                <button class="btn btn-warning boxBtn" onclick="boxBtnClick(this);">직무능력소개</button>
	            </div>
	            <div class="area" id="area6">
	                <br>
	                <img src="<%=request.getContextPath()%>/resources/images/자기소개.png" alt="userImg">
	                <button class="btn btn-warning boxBtn" onclick="boxBtnClick(this);">자기소개</button>
	            </div>
			</div>
		</section>
	</div>
</body>
</html>