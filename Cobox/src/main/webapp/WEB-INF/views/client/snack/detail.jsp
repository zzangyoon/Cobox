<%@page import="com.koreait.cobox.model.domain.Snack"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Snack snack = (Snack)request.getAttribute("snack");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title> Goshop HTML Theme || Product Detail Page</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="shortcut icon" href="/resources/assets/ico/favicon.ico">

        <!-- CSS Global -->
        <link href="/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">        
        <link href="/resources/assets/plugins/bootstrap-select-1.9.3/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css">         
        <link href="/resources/assets/plugins/owl-carousel2/assets/owl.carousel.css" rel="stylesheet" type="text/css"> 
        <link href="/resources/assets/plugins/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.min.css" rel="stylesheet" type="text/css">   
        <link href="/resources/assets/plugins/royalslider/skins/universal/rs-universal.css" rel="stylesheet">
        <link href="/resources/assets/plugins/royalslider/royalslider.css" rel="stylesheet">
        <link href="/resources/assets/plugins/subscribe-better-master/subscribe-better.css" rel="stylesheet" type="text/css">

        <!-- Icons Font CSS -->
        <link href="/resources/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> 

        <!-- Theme CSS -->
        <link href="/resources/assets/css/style.css" rel="stylesheet" type="text/css">
        <link href="/resources/assets/css/header.css" rel="stylesheet" type="text/css"> 

        <!--[if lt IE 9]>
       <script src="/resources/assets/plugins/iesupport/html5shiv.js"></script>
       <script src="/resources/assets/plugins/iesupport/respond.js"></script>
       <![endif]-->
	<script>
	function addCart(){
		var formData = $("#cart_form").serialize();
		$.ajax({
			url:"/client/cart/regist",
			type:"post",
			data:formData,
			success:function(responseData){
				if(responseData.resultCode==1){
					if(confirm(responseData.msg+"\n장바구니에 담긴 상품을 보러갈까요?")){
						location.href=responseData.url;					
					}
				}else{
					alert(responseData.msg);
				}
			}
			
		});
	}
	
	</script>
    </head>
    <body class="single single-product woocommerce woocommerce-page">


        <!-- CONTENT + SIDEBAR -->
        <div class="main-wrapper clearfix">
            <div class="site-pagetitle jumbotron">
                <div class="container theme-container text-center">
                    <h3>Goshop Product</h3>

                    <!-- Breadcrumbs -->
                    <div class="breadcrumbs">
                        <div class="breadcrumbs text-center">
                            <i class="fa fa-home"></i>
                            <span><a href="index.html">Home</a></span>
                            <i class="fa fa-arrow-circle-right"></i>
                            <span class="current">Shop</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="theme-container container">
                <main id="main-content" class="main-content">                  
                    <div itemscope itemtype="http://schema.org/Product" class="product has-post-thumbnail product-type-variable">

                        <div class="row">
                            <div class="col-lg-6 col-md-8 col-sm-10 col-xs-12">
                                
                                     <img  src="/resources/data/snack/<%=snack.getSnack_id() %>.<%=snack.getFilename() %>" alt="" >
                               
                            </div>
                            <div class="spc-15 hidden-lg clear"></div>
                            <div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
                                <div class="summary entry-summary">
                                    <div class="woocommerce-product-rating" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
                                        

                                        <div  class="posted_in">
                                            <h3 class="funky-font-2 fsz-20">Cobox</h3>
                                        </div>
                                    </div>

                                    <div class="product_title_wrapper">
                                        <div itemprop="name" class="product_title entry-title">
                                            <%=snack.getSnack_name() %> <span class="thm-clr"></span>
                                            <p class="font-3 fsz-18 no-mrgn price"> <b class="amount blk-clr"><%=snack.getPrice() %></b>  </p>       
                                        </div>
                                    </div>

                                    <div itemprop="description" class="fsz-15">
                                        <p><%=snack.getDetail() %></p>                                  
                                    </div>

                                    <ul class="stock-detail list-items fsz-12">
                                        <li> <strong> MATERIAL : <span class="blk-clr"> COTTON </span> </strong> </li>
                                        <li> <strong>  STOCK : <span class="blk-clr"> READY STOCK </span> </strong> </li>
                                    </ul>

                                    <form id="cart_form" class="variations_form cart">
                                        <div class="row">
                                           <input type="hidden" name="snack_id" value="<%=snack.getSnack_id()%>">
                                            <div class="col-sm-4">
                                                <div class="form-group selectpicker-wrapper">
                                                    <label class="fsz-15 title-3"> <b> QUANTITY </b> </label>
                                                    <div class="search-selectpicker selectpicker-wrapper">
                                                        <div class="quantity">
						                                    <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
						                                    <input type="number" name="quantity" class="qty-text" id="qty" step="1" min="1" max="12" value="1">
						                                    <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
					                                	</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <button type="submit" class="single_add_to_cart_button button alt fancy-button left" onClick="addCart()">Add to cart</button>
                                                </div>    
                                            </div>
                                        </div>
                                    </form>
                                </div><!-- .summary -->
                            </div>
                        </div>
                        <div class="clearfix"></div>

                        <div class="woocommerce-tabs wc-tabs-wrapper row">
                            <ul class="tabs wc-tabs">
                                <li class="description_tab">
                                    <a href="#tab-description">Description</a>
                                </li>
                                <li class="additional_information_tab">
                                    <a href="#tab-additional_information">Additional Information</a>
                                </li>
                                <li class="reviews_tab">
                                    <a href="#tab-reviews">Reviews (3)</a>
                                </li>
                            </ul>

                            <div class="entry-content wc-tab col-lg-4 col-sm-6 col-xs-12" id="tab-description">
                                <h2 class="title-3">Description</h2>
                                <hr class="heading-seperator" />
                                <div class="scroll-div">
                                    <div class="nano-content">
                                        <p> Itâs a cute reversitile hand bag / shoulder bag that comes with straps inside it if you choose to 
                                            wear on the shoulders and from what photo show I can put my apple ipad on side comfortably in it ~ very cool 
                                            idea , plus theirs 5 storing compartments and 2 smaller ones for a total of 6 and it has nice flowers printed 
                                            designs on white shiny section on bag and straight. </p>
                                        <p>stitched lines on black shiny section , and 2 strips of gold on each end going up and down over the hill on each side identical on handbag.</p>
                                        <p> Itâs a cute reversitile hand bag / shoulder bag that comes with straps inside it if you choose to 
                                            wear on the shoulders and from what photo show I can put my apple ipad on side comfortably in it ~ very cool 
                                            idea , plus theirs 5 storing compartments and 2 smaller ones for a total of 6 and it has nice flowers printed 
                                            designs on white shiny section on bag and straight. </p>
                                        <p>stitched lines on black shiny section , and 2 strips of gold on each end going up and down over the hill on each side identical on handbag.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="entry-content wc-tab col-lg-4 col-sm-6 col-xs-12" id="tab-reviews">
                                <h2 class="title-3">Product Review</h2>
                                <hr class="heading-seperator" />
                                <div class="scroll-div">
                                    <div class="nano-content">
                                        <div id="reviews">
                                            <div id="comments">
                                                <ol class="commentlist">
                                                    <li itemprop="review" itemscope itemtype="http://schema.org/Review" class="comment even thread-even depth-1">
                                                        <div class="comment_container diblock">
                                                            <img alt="" src="/resources/assets/img/extra/review-1.jpg" itemprop="image" class="avatar" height="60" width="60" />
                                                            <div class="comment-text">
                                                                <strong class="name">JOHN LENNON</strong>
                                                                <div class="rating"> 
                                                                    <span class="star active"></span>
                                                                    <span class="star active"></span>
                                                                    <span class="star active"></span>                                           
                                                                    <span class="star active"></span>
                                                                    <span class="star half"></span>
                                                                </div>
                                                                <p class="meta">
                                                                    <time itemprop="datePublished" datetime="2013-06-07T13:03:29+00:00"> 2 June, 2016</time>:
                                                                </p>
                                                                <div itemprop="description" class="description">
                                                                    <p>cute reversitile hand bag  shoulder bag that comes with straps inside it if you choose to wear</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li><!-- #comment-## -->

                                                    <li itemprop="review" itemscope itemtype="http://schema.org/Review" class="comment even thread-even depth-1">
                                                        <div class="comment_container diblock">
                                                            <img alt="" src="/resources/assets/img/extra/review-1.jpg" itemprop="image" class="avatar" height="60" width="60" />
                                                            <div class="comment-text">
                                                                <strong class="name">JOHN LENNON</strong>
                                                                <div class="rating"> 
                                                                    <span class="star active"></span>
                                                                    <span class="star active"></span>
                                                                    <span class="star active"></span>                                           
                                                                    <span class="star active"></span>
                                                                    <span class="star half"></span>
                                                                </div>
                                                                <p class="meta">
                                                                    <time itemprop="datePublished" datetime="2013-06-07T13:03:29+00:00"> 2 June, 2016</time>:
                                                                </p>
                                                                <div itemprop="description" class="description">
                                                                    <p>cute reversitile hand bag  shoulder bag that comes with straps inside it if you choose to wear</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li><!-- #comment-## -->

                                                    <li itemprop="review" itemscope itemtype="http://schema.org/Review" class="comment even thread-even depth-1">
                                                        <div class="comment_container diblock">
                                                            <img alt="" src="/resources/assets/img/extra/review-1.jpg" itemprop="image" class="avatar" height="60" width="60" />
                                                            <div class="comment-text">
                                                                <strong class="name">JOHN LENNON</strong>
                                                                <div class="rating"> 
                                                                    <span class="star active"></span>
                                                                    <span class="star active"></span>
                                                                    <span class="star active"></span>                                           
                                                                    <span class="star active"></span>
                                                                    <span class="star half"></span>
                                                                </div>
                                                                <p class="meta">
                                                                    <time itemprop="datePublished" datetime="2013-06-07T13:03:29+00:00"> 2 June, 2016</time>:
                                                                </p>
                                                                <div itemprop="description" class="description">
                                                                    <p>cute reversitile hand bag  shoulder bag that comes with straps inside it if you choose to wear</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li><!-- #comment-## -->
                                                </ol>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="entry-content wc-tab col-lg-4 col-sm-6 col-xs-12" id="tab-additional_information">
                                <h2 class="title-3">Additional Information</h2>
                                <hr class="heading-seperator" />
                                <div class="scroll-div">
                                    <div class="nano-content">
                                        <h2 class="title-3 fsz-14 no-mrgn spcbt-30"> ASIN: <span class="thm-clr"> B00IL3TMFW </span> </h2>
                                        <p>Product Dimensions: 11 x 5.5 x 8.7 inches; 1.8 pounds.</p>
                                        <p>Shipping Weight: 1.8 pounds <br>
                                            (View shipping rates and policies)</p>
                                        <p>Item model number: NB-B00IL3TMFW</p>
                                        <p>Average Customer Review:    29 customer reviews</p>
                                        <p>Would you like to give feedback on images?</p>   
                                        <p>Item model number: NB-B00IL3TMFW</p>
                                        <p>Average Customer Review:    29 customer reviews</p>
                                        <p>Would you like to give feedback on images?</p>   
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>                    
                </main>
            </div>

            <div class=" light-bg gst-row">
                <div class="fancy-heading text-center">
                    <h3> RELATED PRODUCTS </h3>
                    <h5 class="funky-font-2"> Customers who viewed this item also viewed </h5>                
                </div>

                <!-- Portfolio items -->
                <div class="related-product nav-2 text-center">
                    <div class="product">
                        <div class="rel-prod-media">
                            <img src="/resources/assets/img/products/rel-prod-1.png" alt="" />                                                 
                        </div>
                        <div class="product-content">
                            <h3> <a href="#" class="title-3 fsz-16"> CICLYSMO JACKET </a> </h3>
                            <p class="font-3">Price: <span class="thm-clr"> $299.00 </span> </p>    
                        </div>
                    </div>

                    <div class="product">
                        <div class="rel-prod-media">
                            <img src="/resources/assets/img/products/rel-prod-2.png" alt="" />                                                  
                        </div>
                        <div class="product-content">
                            <h3> <a href="#" class="title-3 fsz-16"> LYCRA BITZ MEN CLOTHING </a> </h3>
                            <p class="font-3">Price: <span class="thm-clr"> $299.00 </span> </p>    
                        </div>
                    </div>

                    <div class="product">
                        <div class="rel-prod-media">
                            <img src="/resources/assets/img/products/rel-prod-3.png" alt="" />
                        </div>
                        <div class="product-content">
                            <h3> <a href="#" class="title-3 fsz-16"> CICLYSMO JACKET </a> </h3>
                            <p class="font-3">Price: <span class="thm-clr"> $299.00 </span> </p>    
                        </div>
                    </div>

                    <div class="product">
                        <div class="rel-prod-media">
                            <img src="/resources/assets/img/products/rel-prod-4.png" alt="" />
                        </div>
                        <div class="product-content">
                            <h3> <a href="#" class="title-3 fsz-16"> LYCRA BITZ MEN CLOTHING </a> </h3>
                            <p class="font-3">Price: <span class="thm-clr"> $299.00 </span> </p>    
                        </div>
                    </div>

                    <div class="product">
                        <div class="rel-prod-media">
                            <img src="/resources/assets/img/products/rel-prod-5.png" alt="" />
                        </div>
                        <div class="product-content">
                            <h3> <a href="#" class="title-3 fsz-16"> CICLYSMO JACKET </a> </h3>
                            <p class="font-3">Price: <span class="thm-clr"> $299.00 </span> </p>    
                        </div>
                    </div>

                    <div class="product">
                        <div class="rel-prod-media">
                            <img src="/resources/assets/img/products/rel-prod-6.png" alt="" />
                        </div>
                        <div class="product-content">
                            <h3> <a href="#" class="title-3 fsz-16"> LYCRA BITZ MEN CLOTHING </a> </h3>
                            <p class="font-3">Price: <span class="thm-clr"> $299.00 </span> </p>    
                        </div>
                    </div>
                </div>
            </div>

            <div class="clear"></div>
        </div>

        <!-- Subscribe News -->
        <section class="gst-row gst-color-white row-newsletter ovh">
            <div class="gst-wrapper">
                <div class="gst-column col-lg-12 no-padding text-center">
                    <div class="fancy-heading text-center">
                        <h3 class="wht-clr">Subscribe Newsletter</h3>
                        <h5 class="funky-font-2 wht-clr">Sign up for <span class="thm-clr">Special Promotion</span></h5>
                    </div>

                    <p><strong>Lorem ipsum dolor sit amet</strong>, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut<br /> laoreet dolore magna aliquam erat volutpat.</p>

                    <div class="gst-empty-space clearfix"></div>

                    <form>
                        <div class="col-md-2"> <h4> <strong class="fsz-20"> <span class="thm-clr">Subscribe</span> to us </strong> </h4> </div>
                        <div class="gst-empty-space visible-sm clearfix"></div>
                        <div class="col-md-4 col-sm-4">
                            <input type="text" class="dblock" placeholder="Enter your name" />
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <input type="text" class="dblock" placeholder="Enter your email address" />
                        </div>

                        <div class="col-md-2 col-sm-4">
                            <input type="submit" class="dblock fancy-button" value="Submit" />
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- / Subscribe News -->

        <!-- FOOTER -->
        <footer class="site-footer clearfix" itemscope itemtype="https://schema.org/WPFooter">
            <div class="site-main-footer container theme-container">
                <div class="row">
                    <div class="col-md-3 col-sm-6 clearfix">
                        <section class="widget footer-widget widget_text clearfix">
                            <div class="textwidget">
                                <p class="fsz-35"> <span class="bold-font-3 wht-clr">GoShop</span> <span class="thm-clr funky-font">bikes</span> </p>
                                <p>ECommerce HTML Template</p>
                                <div class="author-info-social">
                                    <a class="goshop-share rcc-google" href="http://google.com" rel="nofollow" target="_blank">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                    <a class="goshop-share rcc-twitter" href="http://twitter.com" rel="nofollow" target="_blank">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a class="goshop-share rcc-facebook" href="http://facebook.com" rel="nofollow" target="_blank">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a class="goshop-share rcc-linkedin" href="http://linkedin.com" rel="nofollow" target="_blank">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                    <a class="goshop-share rcc-pinterest" href="http://pinterest.com" rel="nofollow" target="_blank">
                                        <i class="fa fa-pinterest-p"></i>
                                    </a>
                                </div>
                            </div>
                        </section>
                    </div>

                    <div class="col-md-3 col-sm-6 clearfix">
                        <section class="widget footer-widget widget_nav_menu clearfix">
                            <h6 class="widget-title">My Account</h6>
                            <ul>
                                <li class="menu-item"><a href="#">Personal Information</a></li>
                                <li class="menu-item"><a href="#">Address</a></li>
                                <li class="menu-item"><a href="#">Discount</a></li>
                                <li class="menu-item"><a href="#">Order History</a></li>
                            </ul>
                        </section>
                    </div>

                    <div class="col-md-3 col-sm-6 clearfix">
                        <section id="nav_menu-3" class="widget footer-widget widget_nav_menu clearfix">
                            <h6 class="widget-title">Our Services</h6>
                            <ul>
                                <li class="menu-item"><a href="#">Shipping Return</a></li>
                                <li class="menu-item"><a href="#">International Shipping</a></li>
                                <li class="menu-item"><a href="#">Secure Shopping</a></li>
                                <li class="menu-item"><a href="#">Affiliates</a></li>
                                <li class="menu-item"><a href="#">F.A.Q</a></li>
                            </ul>
                        </section>
                    </div>

                    <div class="col-md-3 col-sm-6 clearfix">
                        <section id="text-6" class="widget footer-widget widget_text clearfix">
                            <h6 class="widget-title">Newsletter</h6>
                            <div class="textwidget">
                                Lorem ipsum dolor sit amet conseret adipiscing elit sed diam nonunem.
                                <form class="mc4wp-form">
                                    <p>
                                        <label>Email address: </label>
                                        <input type="email" name="EMAIL" placeholder="Your email address" required />
                                    </p>

                                    <p>
                                        <button class="submit"> <i class="fa fa-envelope-o"></i> </button>                                      
                                    </p>
                                </form>
                            </div>
                        </section>
                    </div>
                </div>

                <div class="post-footer">
                    <div class="payment-systems text-center">
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-1.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-2.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-3.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-4.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-5.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-6.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-7.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-8.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-1.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-2.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-5.png" alt=""></a> </div>
                        <div class="item"> <a href="#"><img src="/resources/assets/img/extra/payment-3.png" alt=""></a> </div>
                    </div>
                </div>
            </div>

            <div class="subfooter text-center">
                <div class="container theme-container">
                    <p>Copyright &copy; <a href="#" class="thm-clr">jThemes Studio</a>.  All Right Reserved 2015</p>
                </div>
            </div>
        </footer>

        <!-- Search Popup -->
        <div class="popup-box page-search-box">
            <div>
                <div class="popup-box-inner">
                    <form>
                        <input class="search-query" type="text" placeholder="Search and hit enter" />
                    </form>
                </div>
            </div>
            <a href="javascript:void(0)" class="close-popup-box close-page-search"><i class="fa fa-close"></i></a>
        </div>
        <!-- / Search Popup -->

        <!-- Popup: Login 1 -->
        <div class="modal fade login-popup" id="login-popup" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg">                
                <button type="button" class="close close-btn popup-cls" data-dismiss="modal" aria-label="Close"> <i class="fa-times fa"></i> </button>

                <div class="modal-content login-1 wht-clr">   
                    <div class="login-wrap text-center">                        
                        <h2 class="fsz-35 spcbtm-15"> <span class="bold-font-3 wht-clr">GoShop</span> <span class="thm-clr funky-font">fashion</span> </h2>
                        <p class="fsz-20 title-3"> WELCOME TO OUR  WONDERFUL WORLD </p>
                        <p class="fsz-15 bold-font-4"> Did you know that we ship to over <span class="thm-clr"> 24 different countries </span> </p>                       

                        <div class="login-form">
                            <a class="fb-btn btn spcbtm-15" href="#"> <i class="fa fa-facebook btn-icon"></i>Login with Facebook </a>

                            <p class="bold-font-2 fsz-12 signup"> OR SIGN UP </p>

                            <form class="login">
                                <div class="form-group"><input type="text" placeholder="Email" class="form-control"></div>
                                <div class="form-group"><input type="text" placeholder="Password" class="form-control"></div>
                                <div class="form-group">
                                    <button class="alt fancy-button" type="submit"> <span class="fa fa-lightbulb-o"></span> Login</button>
                                </div>
                            </form>

                            <p>* Denotes mandatory field.</p>
                            <p>** At least one telephone number is required.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Popup: Login 1 --> 

        <!-- Top -->
        <div class="to-top" id="to-top"> <i class="fa fa-long-arrow-up"></i> </div>

        <!-- JS Global -->
        <script src="/resources/assets/plugins/jquery/jquery-2.1.3.js"></script>  
        <script src="/resources/assets/plugins/royalslider/jquery.royalslider.min.js"></script>
        <script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="/resources/assets/plugins/bootstrap-select-1.9.3/dist/js/bootstrap-select.min.js"></script>             
        <script src="/resources/assets/plugins/owl-carousel2/owl.carousel.min.js"></script> 
        <script src="/resources/assets/plugins/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.concat.min.js"></script> 
        <script src="/resources/assets/plugins/isotope-master/dist/isotope.pkgd.min.js"></script>  

        <!-- Page JS -->      
        <script src="/resources/assets/js/jquery.sticky.js"></script>
        <script src="/resources/assets/js/custom.js"></script>
    </body>
</html>