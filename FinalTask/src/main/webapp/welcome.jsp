
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Welcome</title>
</head>
<body>
	 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" 
	 integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" 
	 integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
	 integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	 
	<%@ include file ="menu.jsp" %>
	
	
	
	<div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">
	  <ol class="carousel-indicators">
	    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	  </ol>
	  
	  
	  
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	    	<div class="row align-items-center">
		    	<img class="d-block w-100" src="resources/images/main_bg.png" alt="First slide">
		    </div>
		    <div class="carousel-caption d-none d-md-block">	    
				<div class="row align-items-center">
					<div class="col-md py-2 testCss2">
						<h2 id="txt1"><strong>애플제품을 빠르고 손쉽게!</strong></h2>
						<h1 id="txt2"><strong>MOONSTECH</strong></h1>
	                </div>
				</div>	

	    	</div>
	    </div>
	    
	    <div class="carousel-item">
	    	<div class="row align-items-center">
		    	<img class="d-block w-100" src="resources/images/main_bg_2.png" alt="Second slide">
		    </div>
		    <div class="carousel-caption d-none d-md-block">
		    	
				<div class="row align-items-center" align="center">
					<div class="col-md py-2">
						<h2 id="txt3">빠른배송, 즐거운 만남</h2>
						<h1 id="txt4"><strong>MOONSTECH FOR APPLE</strong></h1>
	                </div>
				</div>	
	    	</div>	    
	    
	    </div>
	    
	    <div class="carousel-item">
	      <img class="d-block w-100" src="resources/images/applepay.png" alt="Third slide">
	      <div class="carousel-caption d-none d-md-block">
				<div class="row align-items-center" >
				    <div class="col-md py-2 testCss1" align="right">
	                	<img alt="" src="resources/images/applepay_logo.PNG" width="235px" height="180px">
					</div>				
					<div id="iphone_div" class="col-md py-2 testCss2"align="center">
						<img id="iphone" alt="" src="resources/images/iphone.png" width="190px" height="330px">	                
					</div>
					<div class="col-md py-2 testCss2">
						<h2 id="txt5"><strong>MOONSTECH에서 당연히</strong></h2>
						<h1 id="txt6"><strong>Apple Pay</strong></h1>
	                </div>

				</div>	
	      </div>
	    </div>
	  </div>
	  
	  
	  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>


	<%! String greeting = "MOONSTECH FOR APPLE" ;
		String tagline = "Welcome to MOONSTECH!";
		String str = "다양한 애플제품을 쉽고 빠르게 구입하는 길";
	%>
	
	<div class="jumbotron">
		<div class="container" align="center">
			<h1 class="display-3">
				<%=greeting %>
			</h1>
		</div>
	</div>

	<div class ="container">
		<div class="text-center">
			<h3>
				<%=tagline %>
			</h3>
			<strong><%=str %></strong>
		</div>
	</div>
	
	<p>  </p>
	
	
	<div class ="container">
		<div class="text-center">
				<jsp:useBean id="now" class="java.util.Date" />
				현재 접속 시각:<fmt:formatDate value="${now}" type="time"/>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>