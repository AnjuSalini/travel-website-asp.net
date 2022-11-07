<%@ Page Language="C#" AutoEventWireup="true" CodeFile="indexpage.aspx.cs" Inherits="indexpage" %>

<%--<%@ Register Src="~/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>--%>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<meta charset="utf-8">
		<meta name="format-detection" content="telephone=no" />
		<link rel="icon" href="images/favicon.ico"/>
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="booking/css/booking.css"/>
		<link rel="stylesheet" href="css/camera.css"/>
		<link rel="stylesheet" href="css/owl.carousel.css"/>
		<link rel="stylesheet" href="css/style.css"/>
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/owl.carousel.js"></script>
		<script src="js/camera.js"></script>
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="js/jquery.mobile.customized.min.js"></script>
		<!--<![endif]-->
		<script src="booking/js/booking.js"></script>
		<script>
		    $(document).ready(function () {
		        jQuery('#camera_wrap').camera({
		            loader: false,
		            pagination: false,
		            minHeight: '444',
		            thumbnails: false,
		            height: '48.375%',
		            caption: true,
		            navigation: true,
		            fx: 'mosaic'
		        });
		        /*carousel*/
		        var owl = $("#owl");
		        owl.owlCarousel({
		            items: 2, //10 items above 1000px browser width
		            itemsDesktop: [995, 2], //5 items between 1000px and 901px
		            itemsDesktopSmall: [767, 2], // betweem 900px and 601px
		            itemsTablet: [700, 2], //2 items between 600 and 0
		            itemsMobile: [479, 1], // itemsMobile disabled - inherit from itemsTablet option
		            navigation: true,
		            pagination: false
		        });
		        $().UItoTop({ easingType: 'easeOutQuart' });
		    });
		</script>
		<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
				<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
			</a>
		</div>
		<![endif]-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
	</head>
	<body class="page1" id="top">
<!--==============================header=================================-->
		<header>
			<div class="container_12">
				<div class="grid_12">
					<div class="menu_block">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li class="current"><a href="indexpage.aspx">Home</a></li>
								<li><a href="#aboutus">About</a></li>
								<li><a href="Register.aspx">Register</a></li>
								<li><a href="Login.aspx">Login</a></li>
								<li><a href="feedbackindex.aspx">Feedback</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
				<div class="grid_12">
					<h1>
						<a href="index.html">
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>
				</div>
			</div>
		</header>
		<div class="slider_wrapper">
			<div id="camera_wrap" class="">
				<div data-src="images/marquee-777x.jpg">
					<div class="caption fadeIn">
						<h2>LONDON</h2>
						<div class="price">
							FROM
							<span>$1000</span>
						</div>
						<a href="Register.aspx">Book Now</a>
					</div>
				</div>
				<div data-src="images/xvirtual-tour-large-double-room-tuin-fashion-hotel-amsterdam-1024x480.jpg.pagespeed.ic.1ik8bK9EWS.jpg">
					<div class="caption fadeIn">
						<h2>Maldives</h2>
						<div class="price">
							FROM
							<span>$2000</span>
						</div>
						<a href="Register.aspx">Book Now</a>
					</div>
				</div>
				<div data-src="images/Taj-Mahal.jpg">
					<div class="caption fadeIn">
						<h2>Venice</h2>
						<div class="price">
							FROM
							<span>$1600</span>
						</div>
						<a href="Register.aspx">Book Now</a>
					</div>
				</div>
			</div>
		</div>
<!--==============================Content=================================-->
		<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - February 10, 2014!</div>
			<div class="container_12">
				<div class="grid_4">
					<div class="banner">
						<img src="images/ban_img1.jpg" alt="">
						<div class="label">
							<div class="title">Barcelona</div>
							<div class="price">FROM<span>$ 1000</span></div>
							<a href="Register.aspx">Book Now</a>
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<img src="images/ban_img2.jpg" alt="">
						<div class="label">
							<div class="title">GOA</div>
							<div class="price">FROM<span>$ 1.500</span></div>
							<a href="Register.aspx">Book Now</a>
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<img src="images/ban_img3.jpg" alt="">
						<div class="label">
							<div class="title">PARIS</div>
							<div class="price">FROM<span>$ 1.600</span></div>
							<a href="Register.aspx">Book Now</a>
						</div>
					</div>
				</div> 
                <div class="clear"></div>
                <div id="aboutus">
                    <h2 align="center" style="font-size:xx-large">About Us</h2>
                   <br />
                    <p>Trip and stay Travels of India is the largest Travel Company in India in terms of number of IATA approved Branches, staff strength and business turnover. Flight bookings have been made simpler than ever after Akbar Travels launched its Travel Portal, Akbar travels online.com, in 2007. The portal has been successfully assisting the passenger to book cheap flight tickets both in National and International sectors. With effect from 12th March, 2014 the name of the travel portal has been changed to 'trip and stay travels.com.com'.
After years of successful operations since 2007, akbartravels.com is poised for greater growth. In addition to strengthening its existing services to customers and travel partners, many new travel- related products are added to the web site. IRCTC e-train tickets are now open for booking and a number of travel agents who have signed up as partners are taking advantage of this feature.Since 2007 trip and stay travels.com has been assisting the passengers to make wise decisions and smart travel plans using the one stop shopping place for their vacation and travel needs. Passengers can get the cheapest Air, Rail tickets and Hotel bookings for both domestic and international destinations. Biggest success of akbartravels.com is in gaining direct access to many of the Low Cost Carriers operating in and out of India. Akbartravels.com is already the leading web site promoting all the no-frill carriers operating domestic flights in India. This success was extended to the international segment by gaining access to low cost carriers operating to Gulf Sectors such as Air Arabia, Air India Express, Bahrain Air and Fly Duabi. With more Airlines added to the list, the website becomes a one-stop-shop for passengers to buy all their tickets. Holiday packages for the budget conscious passenger is promoted on Akbartravels.com website. Excellent holiday packages priced at most affordable rates are available for all tourism hot spots in India and abroad.</p>
                </div>
				<div class="clear"></div>
                <form id="form1" runat="server">
				<%--<div class="grid_6">
                    <div class="flight">
					<h3>Search Flights</h3>
					<form id="bookingForm" runat="server">
						<div class="fl1">
							<div class="tmInput">
								
							&nbsp;From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
								
							</div>
                            <br />
							<div class="tmInput">
								&nbsp;To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;</div>
						</div>
                         <br />
						<div class="fl1">
							<div class="tmInput">
								Date of departure&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;</div>
						 <br />	<div class="tmInput mr0">
								&nbsp;Adults&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;</div>
                            <br /> <div class="tmInput">&nbsp;Children&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </div>
                            <br /> <div > <p >
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" /></p>
						</div> <br />
                            <div id="divGrid" style="width:290px; overflow: scroll; position: absolute; top: 1200px; left: 0px; right: 6200px;" runat="server"> 
                                <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id">
                                </asp:GridView>
                            </div></div>
                            <br />
                      <div class="hotel"  style="margin-left:350px;margin-top:-480px;">
                            <h3>Search Hotels</h3>
                            <div class="clear"></div>
						<strong>Location</strong>
						<label class="tmDatepicker">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
						</label><br /><br />
						<div class="clear"></div>
						<strong>Check-in date</strong>
						<label class="tmDatepicker">&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
						</label>
                            <br />
                             <br /> 
						<div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <p align="center"> <asp:Button ID="Button2" runat="server" Text="Search" /></p></div>
                            <br />
                            <div id="div1" style="width:290px; overflow: scroll; position: absolute; top: 1200px; left: 350px; right: 6200px;" runat="server"> 
                                <asp:GridView ID="GridView2" runat="server" DataKeyNames="Id">
                                </asp:GridView>
                            </div></div>
                            <br /><div class="package"  style="margin-left:650px;margin-top:-450px;">
                             <h3>Search Packages</h3>
						    <label class="tmDatepicker">&nbsp;</label><div class="tmRadio">
							<p>location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
							
						        </p> 
                                <br />
                                <p>Budget&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></p>
							
						</div>
						<div class="clear">&nbsp;</div>
						<div class="clear"></div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <div> <p align="center"><asp:Button ID="Button3" runat="server" Text="Search" /></p></div>
                                <br/> 
                            
                            <div id="div2" style="width:290px; overflow: scroll; position: absolute; top: 1200px; left: 650px; right: 6200px;" runat="server"> 
                                <asp:GridView ID="GridView3" runat="server" DataKeyNames="Id">
                                </asp:GridView>
                            </div></div>
                            <br />
&nbsp;</form>
				</div>
               </div>--%><br />
                <br /><div  class="space" style="height:500px; background-color:white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <h2 align="center" style="font-size:xx-large;height:100px;">Search</h2>
                   
                    <div class="searchbox" style="margin-left:0px;width:auto;height:500px;background-color:lavenderblush;">
                       
                        <p align="center" style="color: #002141; font-size:x-large;padding-top:150px;">
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Searchflightindex.aspx">Search Flight <img src="images/images (1).png" height="20" width="40" /></asp:LinkButton></p>
                         <p align="center" style="color: #002141; font-size:x-large;padding-top:20px;">
                            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Searchhotelindex.aspx">Search Hotel <img src="images/images (1).png" height="20" width="40" /></asp:LinkButton></p>
                         <p align="center" style="color: #002141; font-size:x-large;padding-top:20px;">
                            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Searchpackageindex.aspx">&nbsp;&nbsp;&nbsp;&nbsp;Search Package <img src="images/images (1).png" height="20" width="40" /></asp:LinkButton></p>
                    </div>
                      </div>
                    <div style="height:200px;"></div>
				<div class="grid_12" style="position:relative" ><br /><span class="space2" style="height:100px;"></span></form>
                <h3 align="center">News</h3>
               <div style="height:200px; margin-left:300px;" >  <h5 align="center"><marquee direction="up"><p>Register Now!</p>
                        <p>Fly to Dubai With Low Package!Hurry</p>
                                               </marquee></h5></div>
                <p></p><br />
                <br />
                <br />
					<h3 class="head1" align="center">Latest News</h3>
				</div>
				<div class="grid_4">
					<div class="block1">
						<time datetime="2014-01-01">10<span>Jan</span></time>
						<div class="extra_wrapper">
							<div class="text1 col1"><a href="#">Aliquam nibh</a></div>
							Proin pharetra luctus diam, any scelerisque eros convallisumsan. Maecenas vehicula egestas
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="block1">
						<time datetime="2014-01-01">21<span>Jan</span></time>
						<div class="extra_wrapper">
							<div class="text1 col1"><a href="#">Etiam dui eros</a></div>
							Any scelerisque eros vallisumsan. Maecenas vehicula egestas natis. Duis massa elit, auctor non
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="block1">
						<time datetime="2014-01-01">15<span>Feb</span></time>
						<div class="extra_wrapper">
							<div class="text1 col1"><a href="#">uamnibh Edeto</a></div>
							Ros convallisumsan. Maecenas vehicula egestas venenatis. Duis massa elit, auctor non
						</div>
					</div>
				</div>
			
		</div>
<!--==============================footer=================================-->
		<%--<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="socials">
						<a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						Your Trip (c) 2014 | <a href="#">Privacy Policy</a> | Website Template Designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster.com</a>
					</div>
				</div>
			</div>
		</footer>--%>
		<script>
		    $(function () {
		        $('#bookingForm').bookingForm({
		            ownerEmail: '#'
		        });
		    })
		    $(function () {
		        $('#bookingForm input, #bookingForm textarea').placeholder();
		    });
		</script>
	</body>
</html>
