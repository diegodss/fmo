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

<%
      List<Dia> dia = ObjectifyService.ofy()
          .load()
          .type(Dia.class) // We want only Greetings          
          .order("-data")       // Most recent first - date is indexed.          
          .list();

    if (dia.isEmpty()) {
%>
<p>Nada para mostrar</p>
<%
    } else {
%>
<a href="/dia.jsp">Formulario</a>
<p>Lista:</p>
<%
      // Look at all of our greetings
        for (Dia dias : dia) {
            pageContext.setAttribute("dia_comentario", dias.comentario);
            pageContext.setAttribute("dia_ponto", dias.ponto);
            pageContext.setAttribute("dia_data", dias.data);          
			%>
			<p><b>Data:</b> ${fn:escapeXml(dia_data)}</p>
			<p><b>Ponto:</b> ${fn:escapeXml(dia_ponto)}</p>
			<blockquote>${fn:escapeXml(dia_comentario)}</blockquote>
			<%
        }
    }
%>
</body>
</html>