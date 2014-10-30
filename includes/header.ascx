﻿<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/breadcrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<%--Register DDR Menu--%>
<%@ Register TagPrefix="ddr" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>








<!--
    PICK ONE OF THESE AND USE IT IN THE DNN META TAG BELOW
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    THIS VERSION DISABLES PINCH / ZOOM
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
-->

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" />



<dnn:DnnCssInclude ID="general" runat="server" FilePath="css/main.min.css" PathNameAlias="SkinPath" Priority="100" />



<!-- Fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

<!-- Font Awesome -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">


<!-- MegaNavbar Styles -->
    <link rel="stylesheet" type="text/css" href="<%= SkinPath %>css/MegaNavbar/MegaNavbar.css"/>
    <link rel="stylesheet" type="text/css" href="<%= SkinPath %>css/MegaNavbar/navbar-inverse.css" title="inverse">
    <link rel="stylesheet" type="text/css" href="<%= SkinPath %>css/MegaNavbar/animation/animation.css" title="inverse">

<!--MegaNavbar Highlight-->
    <link href="documentation/assets/plugins/highlight/styles/github.css" rel="stylesheet" type="text/css" />
    
    <script src="documentation/assets/plugins/highlight/highlight.pack.js" type="text/javascript"></script>
    <script>hljs.initHighlightingOnLoad();</script>




<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<!-- Bootstrap's JavaScript plugins) -->
<dnn:DnnJsInclude ID="bootstrapJavascript" runat="server" FilePath="js/bootstrap.min.js" PathNameAlias="SkinPath" Priority="100" />


<header>
          

    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><%=PortalSettings.PortalName%></a>

              
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <!--Left Menu -->
                <ddr:MENU MenuStyle="razorMenu" runat="server" />
                <!-- END Left Menu -->
                
                <ul class="nav navbar-nav navbar-right">
                    <li><dnn:USER ID="USER1" runat="server"/></li>
                    <li><dnn:Login runat="server" id="dnnLogin" /></li>
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

</header>





    	<nav class="navbar navbar-inverse no-border-radius" id="main_navbar" role="navigation">
    		<div class="container-fluid">
    			<!-- Brand and toggle get grouped for better mobile display -->
    			<div class="navbar-header">
    				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
    				<span class="sr-only">Toggle navigation</span>
    				<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
    				</button>
    				<a class="navbar-brand" href="index.html"><i class="fa fa-home"></i> Brand - Allan</a>
    			</div>
    			<!-- Collect the nav links, forms, and other content for toggling -->
    			<div class="collapse navbar-collapse" id="navbar-collapse-1">
    				<!-- text -->
    				<p class="navbar-text navbar-left"><i class="fa fa-h-square"></i>&nbsp;<span class="hidden-sm hidden-md">Text</span></p>
    				<!-- regular link -->
    				<a href="#" class="navbar-link navbar-left"><i class="fa fa-link"></i>&nbsp;<span class="hidden-sm hidden-md">Link</span></a>
    				<ul class="nav navbar-nav navbar-left">
    					<!-- divider -->
    					<li class="divider"></li>
    					<!-- dropdown default -->
    					<li class="dropdown-short">
    						<a data-toggle="dropdown" href="javascript:;" class="dropdown-toggle" aria-expanded="true"><i class="fa fa-bars"></i>&nbsp;<span class="hidden-sm">Short</span><span class="caret"></span></a>
    						<ul class="dropdown-menu">
    							<li class="dropdown-header">Header. Menu items</li>
    							<li class="divider"></li>
    							<li class="dropdown-right-onhover no-fix">
    								<!-- Menu item with submenu -->
    								<a href="javascript:;" data-toggle="collapse" data-target="#id_3ac0aa8ea29f2302" class="dropdown-toggle collapsed"><i class="fa fa-bars"></i> With submenu<span class="desc">Show on hover &amp; don't fix</span></a>
    								<!-- start submenu -->
    								<ul class="dropdown-menu collapse" id="id_3ac0aa8ea29f2302">
    									<li class="dropdown-header">Submenu header</li>
    									<li class="divider"></li>
    									<li class="dropdown-right-onhover">
    										<!-- Menu item with submenu -->
    										<a href="javascript:;" data-toggle="collapse" data-target="#id_c7a0dc0830f7d307" class="dropdown-toggle collapsed"><i class="fa fa-bars"></i> With submenu<span class="desc">Show on hover &amp; fix on click</span></a>
    										<!-- start submenu -->
    										<ul class="dropdown-menu collapse" id="id_c7a0dc0830f7d307">
    											<li class="dropdown-header">Submenu header</li>
    											<li class="divider"></li>
    											<li><a href="#" class="">Default item<span class="desc">Default description</span></a></li>
    											<li class="active"><a href="#" class="">Active item<span class="desc">Active description</span></a></li>
    											<li class="disabled"><a href="#" class="">Disabled item<span class="desc">Disabled description</span></a></li>
    											<li class="open"><a href="#" class="">Open item<span class="desc">Open description</span></a></li>
    											<li class="divider"></li>
    											<li>
    												<p><a href="#&quot;"><i class="fa fa-link"></i> Regular link<span class="desc">Regular link description</span></a></p>
    											</li>
    											<li class="divider"></li>
    											<li><a href="#">Separated link</a></li>
    										</ul>
    										<!-- end submenu -->
    									</li>
    									<li><a href="#" class="">Default item<span class="desc">Default description</span></a></li>
    									<li class="active"><a href="#" class="">Active item<span class="desc">Active description</span></a></li>
    									<li class="disabled"><a href="#" class="">Disabled item<span class="desc">Disabled description</span></a></li>
    									<li class="open"><a href="#" class="">Open item<span class="desc">Open description</span></a></li>
    									<li class="divider"></li>
    									<li>
    										<p><a href="#&quot;"><i class="fa fa-link"></i> Regular link<span class="desc">Regular link description</span></a></p>
    									</li>
    									<li class="divider"></li>
    									<li><a href="#">Separated link</a></li>
    								</ul>
    								<!-- end submenu -->
    							</li>
    							<li class="divider"></li>
    							<li><a href="#">Default item<span class="desc">Default description</span></a></li>
    							<li class="active"><a href="#" class="">Active item<span class="desc">Active description</span></a></li>
    							<li class="disabled"><a href="#" class="">Disabled item<span class="desc">Disabled description</span></a></li>
    							<li class="open"><a href="#" class="">Open item<span class="desc">Open description</span></a></li>
    							<li class="divider"></li>
    							<li>
    								<p><a href="#&quot;">Regular link<span class="desc">Regular link description</span></a></p>
    							</li>
    							<li class="divider"></li>
    							<li>
    								<div class="navbar-form navbar-right" role="search" style="margin-left: -15px;">
    									<div class="input-group"><input type="text" placeholder="input" class="form-control"><span class="input-group-btn"><button class="btn btn-default" type="button"><i class="fa fa-search"></i>&nbsp;</button></span></div>
    								</div>
    							</li>
    						</ul>
    					</li>
    					<!-- divider -->
    					<li class="divider"></li>
    					<!-- dropdown disabled -->
    					<li class="dropdown-short disabled hidden-sm hidden-md"><a>Disabled</a></li>
    					<!-- divider -->
    					<li class="divider hidden-sm hidden-md"></li>
    					<!-- wide -->
    					<li class="dropdown-wide">
    						<a data-toggle="dropdown" href="javascript:;" class="dropdown-toggle"><i class="fa fa-check-square-o"></i>&nbsp;<span class="hidden-sm hidden-md">Wide</span><span class="caret"></span></a>
    						<ul class="dropdown-menu">
    							<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
    								<address>
    									<br>
    									<strong>MegaNavbar, Inc.</strong><br>
    									123 Folsom Ave, Suite 456<br>
    									San Francisco, CA 987654<br>
    									<abbr title="Phone">P:</abbr> (123) 456-7890
    								</address>
    								<address>
    									<strong>Full Name</strong><br>
    									<a href="mailto:#">first.last@example.com</a>
    								</address>
    							</li>
    							<li class="col-xs-6 col-sm-8 col-md-5 col-lg-5">
    								<div role="form">
    									<div class="form-group">
    										<label for="exampleInputEmail1">Email address</label>
    										<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
    									</div>
    									<div class="form-group">
    										<label for="exampleInputPassword1">Password</label>
    										<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    									</div>
    									<div class="form-group">
    										<div class="col-sm-8">
    											<div class="checkbox"><label><input type="checkbox"> Remember me</label></div>
    										</div>
    										<div class="col-sm-4">
    											<button type="submit" class="pull-right btn btn-default">Submit</button>
    										</div>
    									</div>
    								</div>
    							</li>
    							<li class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
    								<div class="embed-responsive embed-responsive-16by9">
    									<iframe class="embed-responsive-item" src="http://mapsurl.appspot.com/google/iframe.html#01L-sstHl9h2O"></iframe>
    								</div>
    							</li>
    						</ul>
    					</li>
    					<!-- divider -->
    					<li class="divider"></li>
    					<li class="dropdown-full ">
    						<a data-toggle="dropdown" href="javascript:;" class="dropdown-toggle" aria-expanded="true"><i class="fa fa-leaf"></i>&nbsp;<span class="hidden-sm hidden-md">Envato</span><span class="caret"></span></a>
    						<div class="dropdown-menu no-padding HingeUpToDown">
    							<ul>
    								<li class="col-sm-12 dropdown-header text-center" style="padding-bottom: 15px; border-bottom: 1px solid #555; background: #1abc9c;color: white; margin: 0 -1px; width: calc(100% + 2px);">
    									<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
    									<h4><i class="fa fa-refresh fa-spin"></i> Everything you need for your next creative project.</h4>
    									<small class="" style="font-size: 13px; font-weight: normal; white-space: normal;">Over 4.5 million digital products created by a global community of designers, developers, photographers, illustrators &amp; producers.</small>
    									<p class="" style="font-size: 14px; font-weight: normal;"><i class="fa fa-arrow-down"></i> Try to click... <i class="fa fa-chevron-left"></i><i class="fa fa-chevron-right"></i> Try to resize</p>
    								</li>
    							</ul>
    							<ul id="myTab" style="margin-top: 1px;">
    								<li class="col-lg-2 col-md-2 col-sm-2 col-xs-6 no-padding" style="border-right: 1px solid #555;"><a href="#themeforest" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #1abc9c"></i> Themeforest<span class="desc"> marketplace</span></a></li>
    								<li class="col-lg-2 col-md-2 col-sm-2 col-xs-6 no-padding" style="border-right: 1px solid #555;"><a href="#codecanyon" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #e78733;"></i> Codecanyon<span class="desc"> marketplace</span></a></li>
    								<li class="col-lg-2 col-md-2 col-sm-2 col-xs-6 no-padding" style="border-right: 1px solid #555;"><a href="#videohive" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #e7a802;"></i> Videohive<span class="desc"> marketplace</span></a></li>
    								<li class="col-lg-2 col-md-2 col-sm-2 col-xs-6 no-padding" style="border-right: 1px solid #555;"><a href="#activeden" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #d35400;"></i> Activeden<span class="desc"> marketplace</span></a></li>
    								<li class="col-lg-2 col-md-2 col-sm-2 col-xs-6 no-padding" style="border-right: 1px solid #555;"><a href="#3docean" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #ab0f34;"></i> 3docean<span class="desc"> marketplace</span></a></li>
    								<li class="hidden-sm hidden-md hidden-lg col-xs-6 no-padding"><a href="#graphicriver" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #308eb1"></i> Graphicriver<span class="desc"> marketplace</span></a></li>
    								<li class="hidden-sm hidden-md hidden-lg col-xs-6 no-padding" style="border-right: 1px solid #555;"><a href="#audiojungle" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #9ac130"></i> Audiojungle<span class="desc"> marketplace</span></a></li>
    								<li class="hidden-sm hidden-md hidden-lg col-xs-6 no-padding"><a href="#photodune" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #0f8c98"></i> Photodune<span class="desc"> marketplace</span></a></li>
    								<li class="hidden-xs col-lg-2 col-md-2 col-sm-2 no-padding no-border-radius no-shadow dropdown-center-onhover no-fix rtl">
    									<a data-toggle="collapse" data-target="#id_4640f9fd6be74fcf" class="dropdown-toggle collapsed" aria-expanded="false"><i class="fa fa-star" style="color: #308eb1"></i><i class="fa fa-star" style="color: #9ac130"></i><i class="fa fa-star" style="color: #0f8c98"></i> More...<span class="desc">See more options</span></a>
    									<ul class="h-divided dropdown-menu no-padding col-lg-2 col-md-2 col-sm-2 col-xs-6 collapse" style="width: calc(100% + 2px); left: 0px; height: 2px;" id="id_4640f9fd6be74fcf" aria-expanded="false">
    										<li class="more"><a href="#graphicriver" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #308eb1"></i> Graphicriver<span class="desc"> marketplace</span></a></li>
    										<li class="more"><a href="#audiojungle" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #9ac130"></i> Audiojungle<span class="desc"> marketplace</span></a></li>
    										<li class="more"><a href="#photodune" role="tab" data-toggle="tab"><i class="fa fa-star" style="color: #0f8c98"></i> Photodune<span class="desc"> marketplace</span></a></li>
    									</ul>
    								</li>
    							</ul>
    							<div id="myTabContent" class="tab-content">
    								<div class="tab-pane" id="themeforest">
    									<ul class="row">
    										<li class="col-lg-12 col-md-12 col-sm-12 col-xs-12 dropdown-header text-center" style="margin: 0 -1px; width: calc(100% + 2px); padding:0 15px;">
    											<h4 style="background: #1abc9c; color: white;">
    												16,000+ Site Templates and Themes from $3
    											</h4>
    										</li>
    									</ul>
    									<div class="divided">
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">All Items</a></li>
    											<li><a href="#">WordPress</a></li>
    											<li><a href="#">HTML</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Marketing</a></li>
    											<li><a href="#">CMS <span class="label label-danger pull-right">New</span></a></li>
    											<li><a href="#">eCommerce</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">PSD</a></li>
    											<li><a href="#">Tumblr</a></li>
    											<li><a href="#">Ghost</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Muse</a></li>
    											<li><a href="#">Plugins</a></li>
    											<li><a href="#">More...</a></li>
    										</ul>
    									</div>
    								</div>
    								<div class="tab-pane" id="codecanyon">
    									<ul class="row">
    										<li class="col-lg-12 col-md-12 col-sm-12 col-xs-12 dropdown-header text-center" style="margin: 0 -1px; width: calc(100% + 2px); padding:0 15px;">
    											<h4 style="background: #e78733; color: white;">
    												10,000+ Scripts and Snippets from $2
    											</h4>
    										</li>
    									</ul>
    									<div class="divided">
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">All Items</a></li>
    											<li><a href="#">PHP Scripts</a></li>
    											<li><a href="#">WordPress</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">eCommerce</a></li>
    											<li><a href="#">JavaScript</a></li>
    											<li><a href="#">CSS</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Mobile</a></li>
    											<li><a href="#">HTML5</a></li>
    											<li><a href="#">Skins</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">WP Themes</a></li>
    											<li><a href="#">Plugins</a></li>
    											<li><a href="#">More</a></li>
    										</ul>
    									</div>
    								</div>
    								<div class="tab-pane " id="videohive">
    									<ul class="row">
    										<li class="col-lg-12 col-md-12 col-sm-12 col-xs-12 dropdown-header text-center" style="margin: 0 -1px; width: calc(100% + 2px); padding:0 15px;">
    											<h4 style="background: #e7a802; color: white;">
    												100,000+ Royalty Free Video Files from $2
    											</h4>
    										</li>
    									</ul>
    									<div class="divided">
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">All Items</a></li>
    											<li><a href="#">Project Files</a></li>
    											<li><a href="#">Product Promo</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Apple Motion</a></li>
    											<li><a href="#">Motion Graphics</a></li>
    											<li><a href="#">Stock Footage</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Cinema 4D Templates</a></li>
    											<li><a href="#">Add Ons</a></li>
    											<li><a href="#">Logo Files</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">News Files</a></li>
    											<li><a href="#">Wedding Files</a></li>
    											<li><a href="#">More</a></li>
    										</ul>
    									</div>
    								</div>
    								<div class="tab-pane " id="activeden">
    									<ul class="row">
    										<li class="col-lg-12 col-md-12 col-sm-12 col-xs-12 dropdown-header text-center" style="margin: 0 -1px; width: calc(100% + 2px); padding:0 15px;">
    											<h4 style="background: #d35400; color: white;">
    												11,000+ Flash &amp; Flex Files from $1
    											</h4>
    										</li>
    									</ul>
    									<div class="divided">
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">All Items</a></li>
    											<li><a href="#">Unity 3D</a></li>
    											<li><a href="#">Flash</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Animations</a></li>
    											<li><a href="#">Games</a></li>
    											<li><a href="#">Site Templates</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Video Players</a></li>
    											<li><a href="#">Image Viewers</a></li>
    											<li><a href="#">Flex</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Facebook Themes</a></li>
    											<li><a href="#">JSFL Extensions</a></li>
    											<li><a href="#">More</a></li>
    										</ul>
    									</div>
    								</div>
    								<div class="tab-pane " id="3docean">
    									<ul class="row">
    										<li class="col-lg-12 col-md-12 col-sm-12 col-xs-12 dropdown-header text-center" style="margin: 0 -1px; width: calc(100% + 2px); padding:0 15px;">
    											<h4 style="background: #ab0f34; color: white;">
    												18,000+ 3D Models &amp; Accessories from $1
    											</h4>
    										</li>
    									</ul>
    									<div class="divided">
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">All Items</a></li>
    											<li><a href="#">3D Models</a></li>
    											<li><a href="#">Cars</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">HDRI Images</a></li>
    											<li><a href="#">CG Textures</a></li>
    											<li><a href="#">Materials &amp; Shaders</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Base Meshes</a></li>
    											<li><a href="#">Scripts &amp; Plugins</a></li>
    											<li><a href="#">2D Concepts</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Animation Data</a></li>
    											<li><a href="#">Render Setup</a></li>
    											<li><a href="#">More</a></li>
    										</ul>
    									</div>
    								</div>
    								<div class="tab-pane " id="graphicriver">
    									<ul class="row">
    										<li class="col-lg-12 col-md-12 col-sm-12 col-xs-12 dropdown-header text-center" style="margin: 0 -1px; width: calc(100% + 2px); padding:0 15px;">
    											<h4 style="background: #308eb1; color: white;">
    												285,000+ Stock Graphics Files from $1
    											</h4>
    										</li>
    									</ul>
    									<div class="divided">
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">All Items</a></li>
    											<li><a href="#">Graphics</a></li>
    											<li><a href="#">Print</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Web Elements</a></li>
    											<li><a href="#">Add-ons</a></li>
    											<li><a href="#">Vectors</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Presentations</a></li>
    											<li><a href="#">Infographics</a></li>
    											<li><a href="#">Icons</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Fonts</a></li>
    											<li><a href="#">Logos</a></li>
    											<li><a href="#">More</a></li>
    										</ul>
    									</div>
    								</div>
    								<div class="tab-pane " id="audiojungle">
    									<ul class="row">
    										<li class="col-lg-12 col-md-12 col-sm-12 col-xs-12 dropdown-header text-center" style="margin: 0 -1px; width: calc(100% + 2px); padding:0 15px;">
    											<h4 style="background: #9ac130; color: white;">
    												195,800 Royalty Free Audio Files from $1
    											</h4>
    										</li>
    									</ul>
    									<div class="divided">
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">All Items</a></li>
    											<li><a href="#">Music</a></li>
    											<li><a href="#">Music Packs</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Sound Effects</a></li>
    											<li><a href="#">Sound Packs</a></li>
    											<li><a href="#">Custom Sounds</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Source Files</a></li>
    											<li><a href="#">Source Packs</a></li>
    											<li><a href="#">Custom Source</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Logos</a></li>
    											<li><a href="#">Idents</a></li>
    											<li><a href="#">More ...</a></li>
    										</ul>
    									</div>
    								</div>
    								<div class="tab-pane " id="photodune">
    									<ul class="row">
    										<li class="col-lg-12 col-md-12 col-sm-12 col-xs-12 dropdown-header text-center" style="margin: 0 -1px; width: calc(100% + 2px); padding:0 15px;">
    											<h4 style="background: #0f8c98 ; color: white;">
    												Royalty Free Stock Photography from $3
    											</h4>
    										</li>
    									</ul>
    									<div class="divided">
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">All Items</a></li>
    											<li><a href="#">Animals</a></li>
    											<li><a href="#">Architecture</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Business</a></li>
    											<li><a href="#">Food</a></li>
    											<li><a href="#">Health</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Sports</a></li>
    											<li><a href="#">People</a></li>
    											<li><a href="#">Technology</a></li>
    										</ul>
    										<ul class="col-sm-3 col-xs-6 col-md-3 h-divided">
    											<li><a href="#">Travel</a></li>
    											<li><a href="#">Nature</a></li>
    											<li><a href="#">More ...</a></li>
    										</ul>
    									</div>
    								</div>
    							</div>
    							<script>
    							    $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {
    							        $('a[data-toggle="tab"]').each(function () {
    							            $(this).parent('li').removeClass('active');
    							        });
    							    })

    							    /*$('.carousel').carousel();*/
    							</script>
    						</div>
    					</li>
    				</ul>
    				<ul class="nav navbar-nav navbar-right">
    					<!-- search form -->
    					<div class="navbar-form-expanded navbar-form navbar-left visible-lg-block visible-md-block visible-xs-block" role="search">
    						<div class="input-group">
    							<input type="text" class="form-control" data-width="80px" data-width-expanded="170px" placeholder="Search..." name="query">
    							<span class="input-group-btn"><button class="btn btn-default" type="submit"><i class="fa fa-search"></i>&nbsp;</button></span>
    						</div>
    					</div>
    					<li class="dropdown-grid visible-sm-block">
    						<a data-toggle="dropdown" href="javascript:;" class="dropdown-toggle"><i class="fa fa-search"></i> Search</a>
    						<div class="dropdown-grid-wrapper" role="menu">
    							<ul class="dropdown-menu col-sm-6">
    								<li>
    									<div class="no-margin">
    										<div class="input-group">
    											<input type="text" class="form-control">
    											<span class="input-group-btn"><button class="btn btn-default" type="button">&nbsp;<i class="fa fa-search"></i></button></span>
    										</div>
    									</div>
    								</li>
    							</ul>
    						</div>
    					</li>
    					<!-- media -->
    					<li class="dropdown-grid">
    						<a data-toggle="dropdown" href="javascript:;" class="dropdown-toggle"><i class="fa fa-tasks"></i>&nbsp;<span class="hidden-sm">Media</span><span class="caret"></span></a>
    						<div class="dropdown-grid-wrapper" role="menu">
    							<ul class="dropdown-menu col-xs-12 col-sm-10 col-md-8 col-lg-7">
    								<li>
    									<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    										<div class="row">
    											<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 divided" style="padding-right: 0;">
    												<ol class="carousel-indicators navbar-carousel-indicators h-divided">
    													<li data-target="#carousel-example-generic" data-slide-to="0" class="active"><a href="#" class="">Cars<span class="hidden-xs desc">Short description</span></a></li>
    													<li data-target="#carousel-example-generic" data-slide-to="1" class=""><a href="#" class="">Animals<span class="hidden-xs desc">Slide with caption</span></a></li>
    													<li data-target="#carousel-example-generic" data-slide-to="2" class=""><a href="#" class="">Nature<span class="hidden-xs desc">Short description</span></a></li>
    													<li data-target="#carousel-example-generic" data-slide-to="3" class=""><a href="#" class="">City<span class="hidden-xs desc">Short description</span></a></li>
    													<li data-target="#carousel-example-generic" data-slide-to="4" class=""><a href="#" class="">Space<span class="hidden-xs desc">Short description</span></a></li>
    												</ol>
    											</div>
    											<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
    												<div class="carousel-inner">
    													<div class="item active">
    														<div class="embed-responsive embed-responsive-16by9">
    															<img class="embed-responsive-item" src="http://placehold.it/450x250">
    														</div>
    													</div>
    													<div class="item">
    														<div class="embed-responsive embed-responsive-16by9">
    															<img class="embed-responsive-item" src="http://placehold.it/450x250">
    															<div class="carousel-caption">
    																<h3>The Eurasian eagle-owl</h3>
    																<p>(Bubo bubo) is a species of eagle-owl resident in much of Eurasia. It is sometimes called the European eagle-owl</p>
    															</div>
    														</div>
    													</div>
    													<div class="item">
    														<div class="embed-responsive embed-responsive-16by9">
    															<img class="embed-responsive-item" src="http://placehold.it/450x250">
    														</div>
    													</div>
    													<div class="item">
    														<div class="embed-responsive embed-responsive-16by9">
    															<img class="embed-responsive-item" src="http://placehold.it/450x250">
    														</div>
    													</div>
    													<div class="item">
    														<div class="embed-responsive embed-responsive-16by9">
    															<img class="embed-responsive-item" src="http://placehold.it/450x250">
    														</div>
    													</div>
    												</div>
    											</div>
    										</div>
    									</div>
    									<script>
    									    $('.carousel').carousel()
    									</script>
    								</li>
    							</ul>
    						</div>
    					</li>
    					<!-- divider -->
    					<li class="divider"></li>
    					<!-- account -->
    					<li class="dropdown-grid">
    						<a data-toggle="dropdown" href="javascript:;" class="dropdown-toggle"><i class="fa fa-lock"></i>&nbsp;<span class="hidden-sm">Account</span><span class="caret"></span></a>
    						<div class="dropdown-grid-wrapper" role="menu">
    							<ul class="dropdown-menu col-xs-12 col-sm-10 col-md-8 col-lg-7">
    								<li>
    									<div id="carousel-example-account" class="carousel slide">
    										<div class="row">
    											<div class="col-lg-8 col-md-8 col-sm-8">
    												<div class="carousel-inner">
    													<div class="item active">
    														<h3 class="text-right" style="padding-top:0px; border-bottom: 1px solid #555;"><i class="fa fa-lock"></i> Sign in</h3>
    														<br>
    														<div class="form-horizontal" role="form">
    															<div class="form-group">
    																<label for="inputEmail3" class="col-sm-3 control-label">Email</label>
    																<div class="col-sm-9"><input type="text" class="input-sm form-control" id="inputEmail3" placeholder="Email" autocomplete="off"></div>
    															</div>
    															<div class="form-group">
    																<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
    																<div class="col-sm-9"><input type="password" class="input-sm form-control" id="inputPassword3" placeholder="Password" autocomplete="off"></div>
    															</div>
    															<div class="form-group">
    																<div class="col-sm-offset-3 col-sm-9">
    																	<button class="btn btn-default pull-right" type="submit"><i class="fa fa-unlock-alt"></i> Sign in</button>
    																</div>
    															</div>
    														</div>
    														<p class="text-primary" style="cursor: pointer;" data-target="#carousel-example-account" data-slide-to="1" ><small>Don’t have a account? Sign up for FREE</small></p>
    														<p class="text-primary" style="cursor: pointer;" data-target="#carousel-example-account" data-slide-to="2" ><small>Lost Your Username?</small></p>
    														<p class="text-primary" style="cursor: pointer;" data-target="#carousel-example-account" data-slide-to="3" ><small>Lost Your Password?</small></p>
    													</div>
    													<div class="item">
    														<h3 class="text-right" style="padding-top:0px; border-bottom: 1px solid #555;"><i class="fa fa-user"></i> Create new account</h3>
    														<br>
    														<div class="form-horizontal" role="form">
    															<div class="form-group">
    																<label for="inputEmail3" class="col-sm-5 control-label">Email</label>
    																<div class="col-sm-7"><input type="text" class="input-sm form-control" id="Text1" placeholder="Enter your email address" autocomplete="off"></div>
    															</div>
    															<div class="form-group">
    																<label for="inputPassword3" class="col-sm-5 control-label">Password</label>
    																<div class="col-sm-7"><input type="password" class="input-sm form-control" id="Password1" placeholder="Enter password" autocomplete="off"></div>
    															</div>
    															<div class="form-group">
    																<label for="inputPassword3" class="col-sm-5 control-label">Confirm password</label>
    																<div class="col-sm-7"><input type="password" class="input-sm form-control" id="Password2" placeholder="Enter confirm password" autocomplete="off"></div>
    															</div>
    															<div class="form-group">
    																<div class="col-sm-12">
    																	<div class="checkbox">
    																		<label>
    																		<input type="checkbox"> <small>I have read and agree to our <a href="#">Terms of use</a> and <a href="#">Privacy Policy</a>.</small>
    																		</label>
    																	</div>
    																</div>
    															</div>
    															<div class="form-group">
    																<div class="col-sm-offset-5 col-sm-7">
    																	<button class="btn btn-default pull-right" type="submit"><i class="fa fa-save"></i> Create an account</button>
    																</div>
    															</div>
    														</div>
    													</div>
    													<!-- Forgot your username -->
    													<div class="item">
    														<h3 class="text-right" style="padding-top:0px; border-bottom: 1px solid #555;"><i class="fa fa-warning"></i> Forgotten your Username?</h3>
    														<br>
    														<p class="text-justify">Enter your email address, you signed up with (or entered in your settings), and we'll send you an email with your username.</p>
    														<br>
    														<div id="lost_password" method="post" class="form" role="form">
    															<div class="input-group">
    																<input type="text" class="form-control" placeholder="Enter your username" autocomplete="off">
    																<span class="input-group-btn">
    																<button class="btn btn-default" type="button"><i class="fa fa-envelope"></i> Send it to me!</button>
    																</span>
    															</div>
    														</div>
    														<br><br>
    														<p class="text-justify"><small><i>If you've forgotten your username and password, you must first retrieve your username (using your email address) and then reset your password using those details.</i></small></p>
    													</div>
    													<!-- Forgot your password -->
    													<div class="item">
    														<h3 class="text-right" style="padding-top:0px; border-bottom: 1px solid #555;"><i class="fa fa-warning"></i> Forgot your password?</h3>
    														<br>
    														<p class="text-justify">Enter your username, and we'll send you an email with a link and instructions to reset your password.
    															If you signed up without an email address (or removed it from settings), visit the FAQ.
    														</p>
    														<br>
    														<div id="Form1" method="post" class="form" role="form">
    															<div class="input-group">
    																<input type="text" class="form-control" placeholder="Enter your username" autocomplete="off">
    																<span class="input-group-btn">
    																<button class="btn btn-default" type="button"><i class="fa fa-envelope"></i> Send it to me!</button>
    																</span>
    															</div>
    														</div>
    														<br>
    														<p class="text-justify"><small><i>If you've forgotten your username and password, you must first <span class="text-primary" style="cursor: pointer;" data-target="#carousel-example-account" data-slide-to="2">retrieve your username</span> (using your email address) and then reset your password using those details.</i></small></p>
    													</div>
    													<div class="item">
    														<h3 class="text-right" style="padding-top:0px; border-bottom: 1px solid #555;"><i class="fa fa-envelope"></i> Subscribe to our mailing list</h3>
    														<br>
    														<p class="text-justify" ><i><small>Get the freebies from us and latest updates about YourApp! We hate spam as much as you do, trust us we won't give your details away to other people.</small></i></p>
    														<br>
    														<div class="form-horizontal" role="form">
    															<div class="form-group">
    																<label for="inputEmail" class="col-sm-5 control-label">Your email address</label>
    																<div class="col-sm-7"><input type="text" class="input-sm form-control" id="inputEmail" name="inputEmail" placeholder="Your email address"></div>
    															</div>
    															<div class="form-group">
    																<label for="inputName" class="col-sm-5 control-label">Your Name</label>
    																<div class="col-sm-7"><input type="text" class="input-sm form-control" id="inputName" name="inputName" placeholder="Your Name"></div>
    															</div>
    															<br>
    															<div class="form-group">
    																<div class="col-sm-offset-5 col-sm-7">
    																	<button class="btn btn-default pull-right" type="submit"><i class="fa fa-envelope-o"></i> Subscribe</button>
    																</div>
    															</div>
    														</div>
    													</div>
    													<div class="item">
    														<h3 class="text-right" style="padding-top:0px; border-bottom: 1px solid #555;"><i class="fa fa-envelope"></i> Contact us</h3>
    														<br>
    														<div class="row">
    															<div class="" role="form">
    																<div class="col-xs-6 col-md-6 ">
    																	<div class="form-group">
    																		<input type="text" class="input-sm form-control" id="Text2" name="inputName" placeholder="Enter your name">
    																	</div>
    																</div>
    																<div class="col-xs-6 col-md-6 ">
    																	<div class="form-group">
    																		<input type="password" class="input-sm form-control" id="Password3" name="inputEmail" placeholder="Enter your email address">
    																	</div>
    																</div>
    																<div class="col-xs-12 col-md-12 ">
    																	<div class="form-group">
    																		<input type="password" class="input-sm form-control" id="inputSubject" name="inputSubject" placeholder="Subject ...">
    																	</div>
    																</div>
    																<div class="col-xs-12 col-md-12 ">
    																	<div class="form-group">
    																		<textarea style="resize: none;" class="form-control"  id="inputMessage" name="inputMessage" placeholder="Message" rows="3"></textarea>
    																	</div>
    																</div>
    																<div class="form-group col-sm-offset-3 col-sm-9">
    																	<button class="btn btn-default pull-right" type="submit"><i class="fa fa-chevron-circle-right"></i> Submit</button>
    																</div>
    															</div>
    														</div>
    													</div>
    												</div>
    											</div>
    											<div class="col-lg-4 col-md-4 col-sm-4" style="border-left: 1px solid #555;">
    												<ol class="carousel-indicators navbar-carousel-indicators" style="">
    													<li data-target="#carousel-example-account" data-slide-to="0" class="active"><a href="#" class="">Sign In<span class="desc">Already have an account? Log in</span></a></li>
    													<li data-target="#carousel-example-account" data-slide-to="1" class=""><a href="#" class="">Sign Up<span class="desc">Create new account</span></a></li>
    													<li data-target="#carousel-example-account" data-slide-to="2" class=""><a href="#" class="">Forgot username?<span class="desc">No problem, we can remind you by email</span></a></li>
    													<li data-target="#carousel-example-account" data-slide-to="3" class=""><a href="#" class="">Forgot password?<span class="desc">Don't worry, it happens!</span></a></li>
    													<li data-target="#carousel-example-account" data-slide-to="4" class=""><a href="#" class="">Subscribe<span class="desc">Subscribe to our Newsletters</span></a></li>
    													<li data-target="#carousel-example-account" data-slide-to="5" class=""><a href="#" class="">Contact us<span class="desc">If you have any questions ...</span></a></li>
    												</ol>
    											</div>
    										</div>
    									</div>
    								</li>
    							</ul>
    						</div>
    					</li>
    				</ul>
    			</div>
    		</div>
    	</nav>
    


 
    <script>
        //Start Fix MegaNavbar on scroll page
        var navHeight = $('#main_navbar').offset().top;
        FixMegaNavbar(navHeight);
        $(window).bind('scroll', function () { FixMegaNavbar(navHeight); });

        function FixMegaNavbar(navHeight) {
            if (!$('#main_navbar').hasClass('navbar-fixed-bottom')) {
                if ($(window).scrollTop() > navHeight) {
                    $('#main_navbar').addClass('navbar-fixed-top')
                    $('body').css({ 'margin-top': $('#main_navbar').height() + 'px' });
                    if ($('#main_navbar').parent('div').hasClass('container')) $('#main_navbar').children('div').addClass('container').removeClass('container-fluid');
                    else if ($('#main_navbar').parent('div').hasClass('container-fluid')) $('#main_navbar').children('div').addClass('container-fluid').removeClass('container');
                }
                else {
                    $('#main_navbar').removeClass('navbar-fixed-top');
                    $('#main_navbar').children('div').addClass('container-fluid').removeClass('container');
                    $('body').css({ 'margin-top': '' });
                }
            }
        }



        //Next code used to prevent unexpected menu close when using some components (like accordion, tabs, forms, etc), please add the next JavaScript to your page
        $(window).load(function () {
            $(document).on('click', '.navbar .dropdown-menu', function (e) { e.stopPropagation(); });
        });

        /*SCROLL PAGE TO TOP*/
        $(document).ready(function () {
            $(".toTop").css("display", "none");

            $(window).scroll(function () {
                if ($(window).scrollTop() > 0) { $(".toTop").fadeIn("slow"); } else { $(".toTop").fadeOut("slow"); }
            });

            $(".toTop").click(function () {
                event.preventDefault();
                $("html, body").animate({ scrollTop: 0 }, "slow");
            });
        });

    </script>