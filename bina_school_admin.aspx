<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bina_school_admin.aspx.cs" Inherits="portfolio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Ramayana School</title>
    <%-- ------ CSS ------ --%>
    <link rel="stylesheet" href="css/superslides.css"/>
    <link href="css/slick.css" rel="stylesheet"/> 
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/favicon.png" />











     <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>  
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css"> 
    <!-- preloader -->
    <link rel="stylesheet" href="css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.tosrus.all.css" />    
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>    


</head>
<body bgcolor="#ff9966">
     <form id="form1" runat="server" style="background-color: #FF9966">
    <header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar-default">  <div class="container">
            <div class="navbar-header">
              <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->
              <!-- TEXT BASED LOGO -->
              <!-- IMG BASED LOGO  -->
               <!-- <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"></a>  -->            
                     
            </div><%--<div class="navbar-header">
              <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->
              <!-- TEXT BASED LOGO -->
              <a class="navbar-brand" href="index.html">School <span>Name</span></a>              
              <!-- IMG BASED LOGO  -->
               <!-- <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"></a>  -->            
                     
            </div>--%>
            <div id="navbar" class="navbar-collapse">
                         
            </div><!--/.nav-collapse -->
            
          </div>     
        </nav>  
      </div>
      <!-- END MENU -->    
    </header>
    
    <section id="portfolio">
        <div class="container">
            <div class="center">
               <h3>Control Pannel</h3>
               <p class="lead">School has given permissions to different users. So as per user 
                   Options are shown:</p>
            </div>
        

            <ul class="portfolio-filter text-center">
                <li><a class="btn btn-default active" href="#" data-filter="*">Admin</a></li>
                      </ul><!--/#portfolio-filter-->

            <div class="row">
                <div class="portfolio-items" style="color: #0000FF; text-decoration: underline">
                    <div class="portfolio-item bootstrap apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href="bina_addmission.aspx"><h3 style="color: #0000FF">Admission</h3></a>
                                                          
                        </div>
                    </div><!--/.portfolio-item-->

                   <div class="portfolio-item bootstrap apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href="bina_addmission_update.aspx"><h3 style="color: #0000FF">Edit Data</h3></a>
                                                          
                        </div>
                    </div>

                     <div class="portfolio-item bootstrap apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href="bina_show_data.aspx"><h3 style="color: #0000FF">Show Data</h3></a>
                                                          
                        </div>
                    </div>

                     
                    <div class="portfolio-item boots apps col-xs-12 col-sm-4 col-md-3">
                    </div>
                    
                   
                   
                    
                     
                     
                    
                    

                    <div class="portfolio-item account apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href= "bina_account_credit.aspx"><h3 style="color: #FFFF00">Credit</h3>
                                    </a>
                                                          
                        </div>
                    </div>

                    <div class="portfolio-item account apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href= "bina_account_debiit.aspx"><h3 style="color: #FFFF00">Debit</h3>
                                    </a>
                                                          
                        </div>
                    </div>

                    <div class="portfolio-item account apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href= "bina_account_daily.aspx"><h3 style="color: #FFFF00">Daily Transaction</h3>
                                    </a>
                                                          
                        </div>
                    </div>
                    <div class="portfolio-item account apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href="bina_staff_joining.aspx"><h3 style="color: #FFFF00">Staff Joining</h3>
                                    </a>
                                                          
                        </div>
                    </div>
                    <div class="portfolio-item account apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href="bina_staff_account.aspx"><h3 style="color: #FFFF00">Staff Account</h3>
                                    </a>
                                                          
                        </div>
                    </div>
                    
                     <div class="portfolio-item account apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href="bina_english_TC.aspx"><h3 style="color: #FFFF00">English TC</h3>
                                    </a>
                                                          
                        </div>
                    </div>
                     <div class="portfolio-item account apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href= "bina_hindi_TC.aspx"><h3 style="color: #FFFF00">Hindi TC</h3>
                                    </a>
                                                          
                        </div>
                    </div>
                    <div class="portfolio-item account apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                           
                               
                                    <a href= "account_student.aspx"><h3 style="color: #FFFF00"></h3>
                                    </a>
                                                          
                        </div>
                    </div>
                             
                     
                </div>
            </div>
        </div>
    </section>
    <!--/#portfolio-item-->
 
    <!--/#bottom-->
    
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


