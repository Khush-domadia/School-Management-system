<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eorganiser_dash_board.aspx.cs" Inherits="portfolio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Deng Portfolio</title>
    <%-- ------ CSS ------ --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />




       
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/favicon.png" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 28px;
        }
    </style>
</head>
<body style="background-color: #FF6600">
     <form id="form1" runat="server">
   <header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header" style="background-color: #33CCFF">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    &nbsp;</div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Default.aspx">Home</a></li> 
						<li><a href="eorganiser_addevents.aspx">Add Event</a></li>
						<li><a href="eorganiser_dash_board.aspx">Old Event</a></li>
                        <li><a href="eorganiser_dash_board.aspx">Profile</a></li>
                        <li class="dropdown">
                 <asp:ImageButton class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" ID="ImageButton13" runat="server" ImageUrl="~/img/login_human.png" Visible="True"></asp:ImageButton>
                  <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Registration<span class="caret"></span></a>--%>
                  <ul class="dropdown-menu" role="menu">
                    
                    <li><asp:Button ID="Button2" onclick="logout_button" runat="server" class="dropdown-toggle wpcf7-submit" Text="  Logout "/></li>
                                   
                  </ul>
                </li>   
                    </ul>
                </div>
            </div>
        </div>
	</header>
  <section >
	<div class="container">
		<div class="row">
			
            <div class="aligncenter">
                <h3 class="aligncenter">

                    <table align="left" class="style1">
                        <tr>
                            <td align="left" class="style2">
                                <asp:Label ID="Label5" runat="server" ForeColor="#6600FF" Text="Name"></asp:Label>
                                :
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" class="style2">
                                <asp:Label ID="Label13" runat="server" ForeColor="#6600FF" Text="Date of Birth"></asp:Label>
                                :
                                <asp:Label ID="Label14" runat="server"></asp:Label>
                            </td>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label8" runat="server" ForeColor="#6600FF"></asp:Label>
                                :
                                <asp:Label ID="Label9" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label7" runat="server" ForeColor="#6600FF" Text="Contact Number"></asp:Label>
                                :
                                <asp:Label ID="Label10" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label12" runat="server" ForeColor="#6600FF" Text="Email-Id"></asp:Label>
                                :
                                <asp:Label ID="Label11" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>

        <asp:GridView ID="GridView2" runat="server"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#A2D69B"  
         AllowPaging ="True"  
        OnPageIndexChanging = "OnPaging" 
                CellPadding="4" ForeColor="#333333" GridLines="None" BackColor="#FFCC99">
            <AlternatingRowStyle BackColor="Yellow" />
            <Columns>
                
                <asp:TemplateField>
                    <ItemTemplate>
                   
                   <div>
        <div class="container">
          <div class="row">
            <div class="col-ld-6  col-md-6 col-sm-6">
              <div class="single_footer_widget">
                 <div class="blogimg_container">
                     
                        <asp:Image class="media-object blog_img" ID="lblbook_author1" runat="server" 
                              ImageUrl='<%# Eval("c_paid_medium")%>'></asp:Image>
                 
                     
                    </div>
                    <h2 class="blog_title">
                       <asp:Label  ID="lblbook_id0" runat="server" Text='<%# Eval("cname")%>'></asp:Label>
                  </h2>
                
              </div>
            </div>
            <div class="col-ld-3  col-md-3 col-sm-3">
              <div class="single_footer_widget">
                <div class="blog_commentbox">
               <div style="color: #FF3300">
                     Start Time:</div>
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("cstart_date")%>'></asp:Label>
                       <div style="color: #FF3300">End Time:
                       </div>
                       <asp:Label ID="Label4" runat="server" Text='<%# Eval("cend_date")%>'></asp:Label>
                       <div style="color: #FF3300">
                Venue:
                </div>
               
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("caddress")%>'></asp:Label>
                  <div>  <asp:LinkButton ID="LinkButton1"   CommandArgument='<%# Eval("event_id")%>'  OnClick="event_profile" runat="server">More Details...</asp:LinkButton>
                    </div>
                    </div>
              </div>
            </div>
            <div class="col-ld-3  col-md-3 col-sm-3">
              <div class="single_footer_widget" style="color: #000080; font-size: x-large;">
                 <div style="color: #FF3300">
                Settings
                </div></div><div> <asp:LinkButton ID="LinkButton2"   CommandArgument='<%# Eval("event_id")%>'  OnClick="event_edit_profiile" runat="server">Edit Event</asp:LinkButton>
               </div><div> <asp:LinkButton ID="LinkButton3"   CommandArgument='<%# Eval("event_id")%>'  OnClick="event_profile" runat="server">Publish Event</asp:LinkButton>
               </div><div> <asp:LinkButton ID="LinkButton4"   CommandArgument='<%# Eval("event_id")%>'  OnClick="event_profile" runat="server">Delete Event</asp:LinkButton></div>
              
            </div>
            
          </div>
        </div>
      </div>
                    </ItemTemplate>

                </asp:TemplateField>
                
                
                
                 
                <%--  <asp:TemplateField>
                    <ItemTemplate>
               <div class="col-lg-12 col-12 col-sm-12">
                  <div >
                    <div class="blogimg_container">
                     
                        <asp:Image class="media-object blog_img" ID="lblbook_author1" runat="server" 
                              ImageUrl='<%# Eval("file_path")%>'></asp:Image>
                 
                     
                    </div>
                    <h2 class="blog_title">
                       <asp:Label  ID="lblbook_id0" runat="server" Text='<%# Eval("file_name")%>'></asp:Label>
                  </h2>
                  </div>
                  
                  </div>
                    </ItemTemplate>
                    
                  
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                     <div class="col-lg-12 col-12 col-sm-12">
                  <div >
                
                   <div class="blog_commentbox">
               
                     Time:<asp:Label ID="Label1" runat="server" Text='<%# Eval("time")%>'></asp:Label>
                  Location:<asp:Label ID="Label2" runat="server" Text='<%# Eval("location")%>'></asp:Label>
                                      
                    </div>
                    </div></div>
                    </ItemTemplate>
                    
                  
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                     <div class="col-lg-12 col-12 col-sm-12">
                  <div>
                    <p>     
                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("file_detail")%>'></asp:Label>
                </p>
                
                  </div>
                </div>


                         
                             
                        </a>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                     <%-- <div class="media-body">
                             <asp:Label ID="lblbook_id2" runat="server" 
                                 Text='<%# Eval("file_detail")%>'></asp:Label>
  
                      </div>--%>
                   <%-- </div>
                    </ItemTemplate>
                    
                  
                </asp:TemplateFiel<%--d>--%>
            </Columns>
          
    </asp:GridView>

                     </h3>
			</div>
		</div>
	</div>
	</section>
       
    <!--/#portfolio-item-->
 <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="aboutus.aspx">About us</a></li>
                            <li><a href="contactus.aspx">We are hiring</a></li>
                            <li><a href="contactus.aspx">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="contactus.aspx">Web Development</a></li>
                            <li><a href="contactus.aspx">SEO Marketing</a></li>
                            <li><a href="contactus.aspx">Theme</a></li>
                            <li><a href="contactus.aspx">Development</a></li>
                            <li><a href="contactus.aspx">Email Marketing</a></li>
                            <li><a href="contactus.aspx">Plugin Development</a></li>
                            <li><a href="contactus.aspx">Article Writing</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="bracademyias.com">BR Academy</a></li>
                           
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
            </div>
        </div>
    </section>
    <!--/#bottom-->
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2015 Deng Solutions. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="default.aspx">Home</a></li>
                        <li><a href="aboutus.aspx">About Us</a></li>
                        
                        <li><a href="contactus.aspx">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <a href="#" class="back-to-top"><i class="fa fa-2x fa-angle-up"></i></a>
    </footer>
    <!--/#footer-->
    <!-- Back To Top -->
    <script type="text/javascript">
        jQuery(document).ready(function () {
            var offset = 300;
            var duration = 500;
            jQuery(window).scroll(function () {
                if (jQuery(this).scrollTop() > offset) {
                    jQuery('.back-to-top').fadeIn(duration);
                } else {
                    jQuery('.back-to-top').fadeOut(duration);
                }
            });

            jQuery('.back-to-top').click(function (event) {
                event.preventDefault();
                jQuery('html, body').animate({ scrollTop: 0 }, duration);
                return false;
            })
        });
    </script>
    <!-- /top-link-block -->
    <!-- Jscript -->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/wow.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
