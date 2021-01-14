<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title> Goshop HTML Theme || Shopping Cart Page</title>

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

    </head>

    <body class="woocommerce-cart" itemscope="itemscope" itemtype="http://schema.org/WebPage">



        <!-- CONTENT + SIDEBAR -->
        <div class="main-wrapper clearfix">

            <div class="container theme-container">
                <main id="main-content" class="main-container"  itemprop="mainContentOfPage" itemscope="itemscope" itemtype="http://schema.org/Blog">
                    <article itemscope="itemscope" itemtype="http://schema.org/BlogPosting" itemprop="blogPost">
                        <header class="entry-header diblock spc-15">
                            <!-- Post Title -->
                            <h2 class="fsz-18 title-3 pull-left" itemprop="headline">Your Cart</h2>
                        </header>

                        <!-- Main Content of the Post -->
                        <div class="cart-wrap">
                            <div class="woocommerce">
                                <form action="checkout.html" method="post">
                                    <table class="shop_table cart">
                                        <thead>
                                            <tr>
                                                <th class="product-thumbnail">&nbsp;</th>
                                                <th class="product-name">Product</th>
                                                <th class="product-price">Price</th>
                                                <th class="product-quantity">Quantity</th>
                                                <th class="product-subtotal">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        
                                        
                                            <tr class="cart_item">
                                                <td class="product-thumbnail">
                                                    <a href="single-product.html">
                                                        <img  src="/resources/assets/img/products/cart-2.jpg" alt="poster_2_up" />
                                                    </a>
                                                </td>
                                                <td class="product-name">
                                                    <div class="cart-product-title">
                                                        <a href="single-product.html">FLUSAS DENIM <span class="thm-clr"> DRESS </span> </a>
                                                    </div>

                                                    <p class="fsz-20 funky-font-2">Women Collection</p>
                                                </td>

                                                <td class="product-price">                                                    
                                                    <p class="font-3 fsz-18 no-mrgn"> <b class="amount blk-clr">$125.00</b> </p>                                                   
                                                </td>

                                                <td class="product-quantity">
                                                    <div class="quantity input-group">
                                                        <span class="input-group-btn">
                                                            <button type="button" class="btn-number" data-type="plus" data-field="cart[b3e3e393c77e35a4a3f3cbd1e429b5dc][qty]">
                                                                <i class="fa fa-chevron-up"></i>
                                                            </button>
                                                        </span>
                                                        <input type="text" name="cart[b3e3e393c77e35a4a3f3cbd1e429b5dc][qty]" value="1 Pcs" title="Qty" class="input-text qty input-qty" size="4" />
                                                        <span class="input-group-btn">
                                                            <button type="button" class="btn-number" data-type="minus" data-field="cart[b3e3e393c77e35a4a3f3cbd1e429b5dc][qty]">
                                                                <i class="fa fa-chevron-down"></i>
                                                            </button>
                                                        </span>
                                                    </div>
                                                </td>

                                                <td class="product-subtotal">
                                                    <p class="font-3 fsz-18 no-mrgn"> <b class="amount blk-clr">$125.00</b> </p>
                                                    <a href="#" class="remove" title="Remove this item"> <i class="fa-times fa"></i> </a>
                                                </td>
                                            </tr>
                                            
                                            
                                            
                                        </tbody>
                                    </table>
                                </form>

                                <div class="cart-extra-info clearfix">
                                   

                                    <div class="col-lg-4 col-sm-4 cart-collaterals">
                                        <div class="cart_totals font-2">
                                            <h4 class="cart-title-highlight title-3">Cart Total</h4>
                                            <table>
                                                <tr class="cart-subtotal">
                                                    <th>Sub Total:</th>
                                                    <td><span class="drk-gry">$130.00</span></td>
                                                </tr>

                                                <tr class="cart-discount">
                                                    <th>Shipping Charge :</th>
                                                    <td><span class="drk-gry">Free Shipping</span></td>
                                                </tr>
                                                <tr class="shipping">
                                                    <th>Promo Discount :</th>
                                                    <td>
                                                        <span class="drk-gry">50%</span>
                                                    </td>
                                                </tr>
                                                <tr class="order-total">
                                                    <th>Order Total</th>
                                                    <td><strong><span class="amount">$115.00</span></strong> </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>

                                   
                                </div>

                                <div class="wc-proceed-to-checkout text-center">
                                    <a href="checkout.html" class="checkout-button button alt wc-forward">
                                        <i class="fa fa-check-circle"></i>Proceed to Checkout
                                    </a>
                                </div>
                            </div>                            
                        </div>
                    </article>
                </main>
            </div>
            

        

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