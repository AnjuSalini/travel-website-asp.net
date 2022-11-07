<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userhome.aspx.cs" Inherits="Userhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><meta charset="utf-8"/>
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
		<style type="text/css">
            .auto-style1 {
                width: 100%;
            }
            .auto-style2 {
                width: 134px;
            }
            .auto-style3 {
                width: 261px;
                height: 21px;
            }
            .auto-style4 {
                height: 21px;
            }
            .auto-style6 {
                width: 261px;
            }
            .auto-style7 {
                width: 261px;
                height: 24px;
            }
            .auto-style8 {
                height: 24px;
            }
        </style>
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
</head>
<body> 
    <form id="form1" runat="server">
    <header>
			<div class="container_12">
				<div class="grid_12">
					<div class="menu_block">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu" >
								<li class="current"><a href="Userhome.aspx">Home</a></li>
								<%--<li><a href="#aboutus">About</a></li>--%>
								<%--<li><a href="Bookingpage.aspx">Book</a></li>--%>
                                <li  align="center" style="margin-top:20px;color:black;">Search
                                       <ul>
                                        <li><a href="searchflightpage.aspx">Flights</a></li>
                                          <li><a href="Searchhotelpage.aspx">Hotels</a></li>
                                          <li><a href="Searchpackagepage.aspx">Package</a></li>
                                            

                                    </ul>

								</li>
                                  <li> <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="Large" OnClick="LinkButton6_Click"> Messages<img src="images/icon-email-notification.png" height="30" width="30" /><asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Small"></asp:Label></asp:LinkButton>
								<li><a href="feedbackuser.aspx">Feedback</a></li>
                                <li>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Log Out</asp:LinkButton></li>
                             
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
				<div class="grid_12">
					<%--<h1>
						<a href="index.html">
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>--%>
				</div>
			</div>
		</header>
   
    <div class="uhome" style="background-color:white;">
    
        <table class="auto-style1">
           
            <tr> <td class="auto-style6"></td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td style="color: #808080; font-size: xx-large; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;" class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome Customer</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td style="color: #000000; font-size: x-large; " class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td style="color: #000000; font-size: x-large; " class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td style="color: #000000; font-size: x-large; " class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">&nbsp;</td>
                <td style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">
                    <p style="color: #000000; font-size: large; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “We welcome you to our humble Company as you enlighten our abode with your warmth and&nbsp;&nbsp;&nbsp; smiley nature.
                       
                        We are truly grateful to you for your visit here and hope to have memorable moments throughout your visit.”</p>
                </td>
            </tr>
        
               
            <tr>
                <td class="auto-style7" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080"></td>
                <td style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080" class="auto-style8">
                    </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">&nbsp;</td>
                <td style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">&nbsp;</td>
                <td style="font-size: x-large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; View Profile&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">&nbsp;</td>
                <td style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">&nbsp;</td>
                <td style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">&nbsp;</td>
                <td style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">&nbsp;</td>
                <td style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <div class="dlist" style="border:1px solid gray;width:250px;margin-left:400px;">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="R_Id">
                        <ItemTemplate>
                            Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            <br />
                            <br />
                            <br />
                            Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                            <br />
                            <br />
                            <br />
                            Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                            <br />
                            <br />
                            <br />
                            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            <br />
                            <br />
                            <br />
                            Mobile No&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("mobileno") %>'></asp:Label>
                            &nbsp;
                            <br />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>

                         <br />
                        <br />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



                         <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Edit Profile</asp:LinkButton>
                    </div> &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">&nbsp;</td>
                <td style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">&nbsp;</td>
                <td style="font-size: large; font-style: normal; font-family: 'lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #808080">
                    &nbsp;</td>
            </tr>
            </table>
        <div class="f" style="margin-top:-1090px; margin-left:0px; width:210px;height:1250px; background-color:firebrick; font-size: x-large; color: #000000;">
            <p></p><p></p> <br />
            <br /><br /> <br /><br /> <br /><br />Want to Search? <br /><br /><br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" ForeColor="White" PostBackUrl="~/searchflightpage.aspx">Search Flights</asp:LinkButton></p>
            <p>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Large" ForeColor="White" PostBackUrl="~/Searchhotelpage.aspx">Search Hotels</asp:LinkButton></p>
            <p>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="Large" ForeColor="White" PostBackUrl="~/Searchpackagepage.aspx">Search Package</asp:LinkButton></p><p></p>
        </div>
    
       

    
    </div>
    </form> 
   <%-- <div class="footer"style="height:200px;width:auto;"></div>--%>
</body>
</html>
