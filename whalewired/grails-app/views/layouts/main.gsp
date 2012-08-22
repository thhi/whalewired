<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="title" content="Whalewired" />
<meta name="description"
	content="Whalewired is TRAEN's Java Team's log handling system." />
<title><g:layoutTitle default="Whalewired" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'kendo.common.min.css')}"	type="text/css" />
<link rel="stylesheet"	href="${resource(dir: 'css', file: 'kendo.default.min.css')}" type="text/css" />
<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.qtip.min.css')}"type="text/css" />
<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
<!-- 		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css"> -->
<g:javascript src="jquery.min.js" library="jquery" />
<g:javascript src="application.js" />
<g:javascript src="kendo.all.min.js" />
<g:javascript src="jquery.qtip.min.js" />

<!-- Loading Simplenso Bootstrap Template. See SimplensoResources.groovy -->
<r:require modules="simplenso" />

<g:setProvider library="jquery" />
<g:layoutHead />
<script type="text/javascript">
		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-29410839-1']);
		  _gaq.push(['_trackPageview']);
		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();
		</script>


<r:layoutResources />
</head>


<body id="dashboard">
	<!-- Top navigation bar -->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a href="${createLinkTo(dir: '/')}" class="brand"><img
					src="${resource(dir: 'images', file: 'whalewired_logo.png')}"
					alt="WhaleWired" style="height: 26px;" /></a>
				<div class="btn-group pull-right">
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i> John Doe <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">Profile</a></li>
						<li><a href="#">Settings</a></li>
						<li><a class="cookie-delete" href="#">Delete Cookies</a></li>
						<li class="divider"></li>
						<li><a href="login.html">Logout</a></li>
					</ul>
				</div>
				<div class="nav-collapse">
					<ul class="nav">
						<li><a class="home" href="${createLink(uri: '/')}"><g:message
									code="default.home.label" /></a></li>
						<li><a class="logEvent"
							href="${createLink(uri: '/logEvent/list')}">Events</a></li>
						<li><a class="bookmark"
							href="${createLink(uri: '/bookmarkLogEvent/list')}">Bookmarks</a></li>
						<li><a class="applications"
							href="${createLink(uri: '/logApplication/list')}">Applications</a></li>
						<li style="float: right;"><a class="clients"
							href="${createLink(uri: '/logClients/')}">Client setup</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<g:layoutBody />
		<div class="footer" role="contentinfo">
			${grailsApplication.metadata.'app.version'}
			- Continuously deployed on every check in
		</div>
		<div id="spinner" class="spinner" style="display: none;">
			<g:message code="spinner.alt" default="Loading&hellip;" />
		</div>
		<g:javascript library="application" />

		<r:layoutResources />
	</div>
</body>
</html>