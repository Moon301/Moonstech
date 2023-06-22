<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
	<div class="container">
	
	<a class="navbar-brand" href="welcome.jsp"><strong>MOONSTECH</strong></a>
  	
    <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
        <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="products.jsp">list  </a>
        </li>
        
			<c:choose>
				<c:when test="${empty sessionId}">
					<li class="nav-item"><a class="nav-link" href="<c:url value="loginMember.jsp"/>">logIn </a></li>
					<li class="nav-item"><a class="nav-link" href='<c:url value="addMember.jsp"/>'>Sign Up</a>
				</c:when>
				<c:when test="${sessionId=='admin'}">
					<li class="nav-item"><a class="nav-link" href="addProduct.jsp">Add</a></li>
        			<li class="nav-item"><a class="nav-link" href="./editProduct.jsp?edit=update">Modify</a></li>
       				<li class="nav-item"><a class="nav-link" href="./editProduct.jsp?edit=delete">delete</a></li>
					<li class="nav-item"><a class="nav-link" href='<c:url value="updateMember.jsp"/>'>memberModify</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="logoutMember.jsp"/>">logOut </a></li>
				</c:when>
				<c:otherwise>
					<li class="nav-item"><a class="nav-link" href="cart.jsp">MyCart</a></li>
					<li class="nav-item"><a class="nav-link" href='<c:url value="updateMember.jsp"/>'>MyProfile</a>
					<li style="padding-top: 7px; color: white">[<%=sessionId%>‹˜]</li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="logoutMember.jsp"/>">logOut </a></li>
				</c:otherwise>
			</c:choose>
        </ul>
    </div>
	</div>
</nav>


