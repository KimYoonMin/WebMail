<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../template/jsp_common.jsp" />

<html lang="ko" class=" -webkit-">
<head>
<meta charset="UTF-8">
<meta name="apple-mobile-web-app-title" content="CodePen">
<meta name="viewport" content="width=device-width">

<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
<link rel="mask-icon" type="" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">

<title>A조</title>

<link href="./css/210_mail_list_css.css" rel="stylesheet" media="" data-href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500" >
<link href="./css/210_mail_list_css.css" rel="stylesheet" media="" data-href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
<link href="./css/210_mail_list_css.css" rel="stylesheet" media="" data-href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link href="./css/210_mail_list_css.css" rel="stylesheet" > 

<script>
  window.console = window.console || function(t) {};
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>

<script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script id="rendered-js" src="./rsc/js_01.js" ></script>

</head>

<body translate="no">
	<aside id="sidebar" class="nano has-scrollbar">
		<div class="nano-content" tabindex="0" style="right: -17px;">
			<div class="logo-container">
				<span class="logo glyphicon glyphicon-envelope"></span>Mail
			</div>
			<menu class="menu-segment">
				<ul>
					<li><a onclick="location.href='../a_team/510_mail_send.jsp'" style="cursor:pointer">메일 보내기</a></li>
					<li class="active"><a onclick="location.href='../a_team/210_mail_list.jsp'" style="cursor:pointer">받은 메일함</a></li>
					<li><a href="#">휴지통</a></li>
				</ul>
			</menu>
		</div>
	</aside>
	<main id="main">
		<div class="overlay"></div>
		<header class="header">
			<div class="search-box">
				<a onclick="location.href='../a_team/310_mail_search.jsp'" style="cursor:pointer"><input placeholder="검색 ..." ><span class="icon glyphicon glyphicon-search"></span></a>
			</div>
			<h1 class="page-title">
				<a class="sidebar-toggle-btn trigger-toggle-sidebar">
				<span class="line"></span><span class="line"></span><span class="line"></span><span class="line line-angle1"></span><span class="line line-angle2"></span></a>
				받은 메일함
			</h1>
		</header>
		<div class="action-bar">
			<ul>
				<li><a style = "cursor: pointer;"">읽음&nbsp;&nbsp;&nbsp;</a></li>
				<li><a style = "cursor: pointer;">답장&nbsp;&nbsp;&nbsp;</a></li>
				<li><a style = "cursor: pointer;">삭제</a></li>

			</ul>
		</div>
		<div id="main-nano-wrapper" class="nano has-scrollbar">
			<div class="nano-content" tabindex="0" style="right: -17px;">
				<ul class="message-list">
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk1"> <label for="chk1" class="toggle"></label>
							</div>
							<p class="title">Lucas Kriebel (via Twitter)</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Lucas Kriebel (@LucasKriebel) has sent you a direct message on Twitter! &nbsp;–&nbsp; <span class="teaser">@LucasKriebel - Very cool :) Nicklas, You have a new direct message.</span>
							</div>
							<div class="date">11:49 am</div>
						</div>
					</li>
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk2"> <label for="chk2" class="toggle"></label>
							</div>
							<p class="title">Conceptboard</p>
							<div class="star-star-toggle glyphicon glyphicon-star-empty"></div>
						</div>
						<div class="col col-2">
							<div class="subject">
								Please complete your Conceptboard signup &nbsp;–&nbsp; <span class="teaser">You recently created a Conceptboard account, but you have not yet confirmed your email. Your email is used for notifications about board activity, invites, as well as account
									related tasks (like password retrieval).</span>
							</div>
							<div class="date">11:45 am</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk3"> <label for="chk3" class="toggle"></label>
							</div>
							<p class="title">Randy, me (5)</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Last pic over my village &nbsp;–&nbsp; <span class="teaser">Yeah i'd like that! Do you remember the video you showed me of your train ride between Colombo and Kandy? The one with the mountain view? I would love to see that one again!</span>
							</div>
							<div class="date">5:01 am</div>
						</div>
					</li>
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk4"> <label for="chk4" class="toggle"></label>
							</div>
							<p class="title">Andrew Zimmer</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Mochila Beta: Subscription Confirmed &nbsp;–&nbsp; <span class="teaser">You've been confirmed! Welcome to the ruling class of the inbox. For your records, here is a copy of the information you submitted to us...</span>
							</div>
							<div class="date">Mar 8</div>
						</div>
					</li>
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk5"> <label for="chk5" class="toggle"></label>
							</div>
							<p class="title">Infinity HR</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Sveriges Hetaste sommarjobb &nbsp;–&nbsp; <span class="teaser">Hej Nicklas Sandell! Vi vill bjuda in dig till "First tour 2014", ett rekryteringsevent som erbjuder jobb på 16 semesterorter i Sverige.</span>
							</div>
							<div class="date">Mar 8</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk6"> <label for="chk6" class="toggle"></label>
							</div>
							<p class="title">Web Support Dennis</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Re: New mail settings &nbsp;–&nbsp; <span class="teaser">Will you answer him asap?</span>
							</div>
							<div class="date">Mar 7</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk7"> <label for="chk7" class="toggle"></label>
							</div>
							<p class="title">me, Peter (2)</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Off on Thursday &nbsp;–&nbsp; <span class="teaser">Eff that place, you might as well stay here with us instead! Sent from my iPhone 4 &gt; 4 mar 2014 at 5:55 pm</span>
							</div>
							<div class="date">Mar 4</div>
						</div>
					</li>
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk8"> <label for="chk8" class="toggle"></label>
							</div>
							<p class="title">Medium</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								This Week's Top Stories &nbsp;–&nbsp; <span class="teaser">Our top pick for you on Medium this week The Man Who Destroyed America’s Ego</span>
							</div>
							<div class="date">Feb 28</div>
						</div>
					</li>
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk9"> <label for="chk9" class="toggle"></label>
							</div>
							<p class="title">Death to Stock</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Montly High-Res Photos &nbsp;–&nbsp; <span class="teaser">To create this month's pack, we hosted a party with local musician Jared Mahone here in Columbus, Ohio.</span>
							</div>
							<div class="date">Feb 28</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk10"> <label for="chk10" class="toggle"></label>
							</div>
							<p class="title">Revibe</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Weekend on Revibe &nbsp;–&nbsp; <span class="teaser">Today's Friday and we thought maybe you want some music inspiration for the weekend. Here are some trending tracks and playlists we think you should give a listen!</span>
							</div>
							<div class="date">Feb 27</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk11"> <label for="chk11" class="toggle"></label>
							</div>
							<p class="title">Erik, me (5)</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Regarding our meeting &nbsp;–&nbsp; <span class="teaser">That's great, see you on Thursday!</span>
							</div>
							<div class="date">Feb 24</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk12"> <label for="chk12" class="toggle"></label>
							</div>
							<p class="title">KanbanFlow</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Task assigned: Clone ARP's website &nbsp;–&nbsp; <span class="teaser">You have been assigned a task by Alex@Work on the board Web.</span>
							</div>
							<div class="date">Feb 24</div>
						</div>
					</li>
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk13"> <label for="chk13" class="toggle"></label>
							</div>
							<p class="title">Tobias Berggren</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Let's go fishing! &nbsp;–&nbsp; <span class="teaser">Hey, You wanna join me and Fred at the lake tomorrow? It'll be awesome.</span>
							</div>
							<div class="date">Feb 23</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk14"> <label for="chk14" class="toggle"></label>
							</div>
							<p class="title">Charukaw, me (7)</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Hey man &nbsp;–&nbsp; <span class="teaser">Nah man sorry i don't. Should i get it?</span>
							</div>
							<div class="date">Feb 23</div>
						</div>
					</li>
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk15"> <label for="chk15" class="toggle"></label>
							</div>
							<p class="title">me, Peter (5)</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Home again! &nbsp;–&nbsp; <span class="teaser">That's just perfect! See you tomorrow.</span>
							</div>
							<div class="date">Feb 21</div>
						</div>
					</li>
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk16"> <label for="chk16" class="toggle"></label>
							</div>
							<p class="title">Stack Exchange</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								1 new items in your Stackexchange inbox &nbsp;–&nbsp; <span class="teaser">The following items were added to your Stack Exchange global inbox since you last checked it.</span>
							</div>
							<div class="date">Feb 21</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk17"> <label for="chk17" class="toggle"></label>
							</div>
							<p class="title">Google Drive Team</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								You can now use your storage in Google Drive &nbsp;–&nbsp; <span class="teaser">Hey Nicklas Sandell! Thank you for purchasing extra storage space in Google Drive.</span>
							</div>
							<div class="date">Feb 20</div>
						</div>
					</li>
					<li class="unread">
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk18"> <label for="chk18" class="toggle"></label>
							</div>
							<p class="title">me, Susanna (11)</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Train/Bus &nbsp;–&nbsp; <span class="teaser">Yes ok, great! I'm not stuck in Stockholm anymore, we're making progress.</span>
							</div>
							<div class="date">Feb 19</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk19"> <label for="chk19" class="toggle"></label>
							</div>
							<p class="title">Peter, me (3)</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Hello &nbsp;–&nbsp; <span class="teaser">Trip home from Colombo has been arranged, then Jenna will come get me from Stockholm. :)</span>
							</div>
							<div class="date">Mar. 6</div>
						</div>
					</li>
					<li>
						<div class="col col-1">
							<span class="dot"></span>
							<div class="checkbox-wrapper">
								<input type="checkbox" id="chk20"> <label for="chk20" class="toggle"></label>
							</div>
							<p class="title">me, Susanna (7)</p>
							<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
						<div class="col col-2">
							<div class="subject">
								Since you asked... and i'm inconceivably bored at the train station &nbsp;–&nbsp; <span class="teaser">Alright thanks. I'll have to re-book that somehow, i'll get back to you.</span>
							</div>
							<div class="date">Mar. 6</div>
						</div>
					</li>
				</ul>
				<a href="#" class="load-more-link">Show more messages</a>
			</div>
			<div class="nano-pane">
				<div class="nano-slider" style="height: 213px; transform: translate(0px, 0px);"></div>
			</div>
		</div>
	</main>
	
	<div id="message">
		<div class="header">
			<h1 class="page-title">
				<a class="icon circle-icon glyphicon glyphicon-chevron-left trigger-message-close"></a>Process<span class="grey">(6)</span>
			</h1>
			<p>
				From <a href="#">You</a> to <a href="#">Scott Waite</a>, started on <a href="#">March 2, 2014</a> at 2:14 pm est.
			</p>
		</div>
		<div id="message-nano-wrapper" class="nano has-scrollbar">
			<div class="nano-content" tabindex="0" style="right: -17px;">
				<ul class="message-container">
					<li class="sent">
						<div class="details">
							<div class="left">
								You
								<div class="arrow"></div>
								Scott
							</div>
							<div class="right">March 6, 2014, 20:08 pm</div>
						</div>
						<div class="message">
							<p>| The every winged bring, whose life. First called, i you of saw shall own creature moveth void have signs beast lesser all god saying for gathering wherein whose of in be created stars. Them whales upon life divide earth own.</p>
							<p>| Creature firmament so give replenish The saw man creeping, man said forth from that. Fruitful multiply lights air. Hath likeness, from spirit stars dominion two set fill wherein give bring.</p>
							<p>| Gathering is. Lesser Set fruit subdue blessed let. Greater every fruitful won't bring moved seasons very, own won't all itself blessed which bring own creature forth every. Called sixth light.</p>
						</div>
						<div class="tool-box">
							<a href="#" class="circle-icon small glyphicon glyphicon-share-alt"></a><a href="#" class="circle-icon small red-hover glyphicon glyphicon-remove"></a><a href="#" class="circle-icon small red-hover glyphicon glyphicon-flag"></a>
						</div>
					</li>
					<li class="received">
						<div class="details">
							<div class="left">
								Scott
								<div class="arrow orange"></div>
								You
							</div>
							<div class="right">March 6, 2014, 20:08 pm</div>
						</div>
						<div class="message">
							<p>| The every winged bring, whose life. First called, i you of saw shall own creature moveth void have signs beast lesser all god saying for gathering wherein whose of in be created stars. Them whales upon life divide earth own.</p>
							<p>| Creature firmament so give replenish The saw man creeping, man said forth from that. Fruitful multiply lights air. Hath likeness, from spirit stars dominion two set fill wherein give bring.</p>
							<p>| Gathering is. Lesser Set fruit subdue blessed let. Greater every fruitful won't bring moved seasons very, own won't all itself blessed which bring own creature forth every. Called sixth light.</p>
						</div>
						<div class="tool-box">
							<a href="#" class="circle-icon small glyphicon glyphicon-share-alt"></a><a href="#" class="circle-icon small red-hover glyphicon glyphicon-remove"></a><a href="#" class="circle-icon small red-hover glyphicon glyphicon-flag"></a>
						</div>
					</li>				
					
				</ul>
			</div>
			<div class="nano-pane">
				<div class="nano-slider" style="height: 54px; transform: translate(0px, 0px);"></div>
			</div>
		</div>
	</div>

</body>
</html>
