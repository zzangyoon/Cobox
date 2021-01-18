<%@ page contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/header.jsp"%>
</head>
<body class="single-cin">
<div class="wrapper">
	<%@include file="../inc/top.jsp"%>
	<!-- Main content -->		
 	
   <section class="container">
            <div class="order-container">
                <div class="order">
                    <img class="order__images" alt='' src="/resources/images/tickets.png">
                    <p class="order__title">Thank you <br><span class="order__descript">you have successfully purchased tickets</span></p>
                </div>

                <div class="ticket">
                    <div class="ticket-position">
                        <div class="ticket__indecator indecator--pre"><div class="indecator-text pre--text">online ticket</div> </div>
                        <div class="ticket__inner">

                            <div class="ticket-secondary">
                                <span class="ticket__item">Ticket number <strong class="ticket__number">a126bym4</strong></span>
                                <span class="ticket__item ticket__date">25/10/2013</span>
                                <span class="ticket__item ticket__time">17:45</span>
                                <span class="ticket__item">Cinema: <span class="ticket__cinema">Cineworld</span></span>
                                <span class="ticket__item">Hall: <span class="ticket__hall">Visconti</span></span>
                                <span class="ticket__item ticket__price">price: <strong class="ticket__cost">$60</strong></span>
                            </div>

                            <div class="ticket-primery">
                                <span class="ticket__item ticket__item--primery ticket__film">Film<br><strong class="ticket__movie">The Fifth Estate (2013)</strong></span>
                                <span class="ticket__item ticket__item--primery">Sits: <span class="ticket__place">11F, 12F, 13F</span></span>
                            </div>


                        </div>
                        <div class="ticket__indecator indecator--post"><div class="indecator-text post--text">online ticket</div></div>
                    </div>
                </div>

                <div class="ticket-control">
                    <a href="#" class="watchlist list--download">Download</a>
                    <a href="#" class="watchlist list--print">Print</a>
                </div>

            </div>
        </section>
	<%@include file="../inc/footer.jsp" %>
	</div>
	<%@include file="../inc/script.jsp"%>
<script type="text/javascript">
$(document).ready(function() {
	init_BookingOne();
});
</script>
</body>
</html>