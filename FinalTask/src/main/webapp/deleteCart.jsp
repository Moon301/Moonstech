<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository" %>


<%
	String id= request.getParameter("cartId");
	if(id==null||id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	session.invalidate();
	
	
	response.sendRedirect("cart.jsp");

%>



