<%@ page import="com.bitmaker.fmo.Dia" %>
<%@ page import="com.googlecode.objectify.Key" %>
<%@ page import="com.googlecode.objectify.ObjectifyService" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="/stylesheets/main.css"/>
</head>
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<body>
<a href="/dia.jsp">Historico</a>
<form action="/sign" method="post">
    <div>
	    <img src="/img/thumb-up.png" class="thumbs-up" width="100" height="100" alt="Positivo"/>
	    <img src="/img/thumb-down.png" class="thumbs-down" width="100" height="100" alt="Negativo"/>    
    	<input type="hidden" name="ponto" id="ponto" >    	
    </div>
    <div><textarea name="comentario" rows="3" cols="26"></textarea></div>
    <div><input type="submit" value="Enviar"/></div>  
</form>
<script>
$(document).ready(function () {
 	$(".thumbs-up").click(function() {
 		 	$("#ponto").val("1");
 	});

 	$(".thumbs-down").click(function() {
 		 	$("#ponto").val("0");
 	}); 	
});
</script>
</body>
</html>