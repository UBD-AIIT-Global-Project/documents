<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MyPage</title>
<link href="../static/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../static/js/test.js"></script> 
</head>

<body>
<form name="form1">
<div id="out"><!-- OutSide -->
<INPUT TYPE="hidden" NAME="key" VALUE="">
<INPUT TYPE="hidden" NAME="Fkey" VALUE="C">

<div id="head">
<h1>UserMyPage</h1>
</div><!-- head -->

<div id="main">

	<div id="right">
	<h2>MyPage</h2>
	<div class="tex2">Welcome!</div>
	
	</div><!-- right -->

	<div id="left"><!-- SideMenu -->
	<ul>
	<li><a href="#" onclick="location.href='/mainMenu'">MainMenu</a></li>
	<li><a href="#" onClick="if (/Chrome/i.test(navigator.userAgent)) { window.close(); } else { window.open('about:blank', '_self').close(); }">Close</a></li>
	</ul>
	</div><!-- left -->

<br style="clear:both">
</div><!-- main -->

<div id="foot">
</div><!-- foot -->
</div><!-- out -->
</form>
</body>
</html>
