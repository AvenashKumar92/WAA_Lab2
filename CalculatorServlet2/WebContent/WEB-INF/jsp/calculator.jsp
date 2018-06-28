<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: Avenash_2
  Date: 6/25/2018
  Time: 9:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Calculator</title>
    <style type="text/css">@import url(resources/css/main.css);</style>
</head>
<body>

<c:if test="${errors != null}">
     
     <p id="errors">
         Error(s)!
        <ul>
	        <c:forEach var="error" items="${errors}">
	            <li>${error}</li>
	        </c:forEach>
	    </ul>
 
     
 </c:if>

<form action="calc2" method="post">
    <input type = "text" name = "add1" size = "2" value = "${calculator.add1}" />+
    <input type = "text" name = "add2" value = "${calculator.add2}" size = "2"/>=<input type = "text" name = "sum" value =  ''  size = "2" readonly/><br/>
    <input type = "text" name = "mult1" value = "${calculator.mult1}" size = "2"/>*
    <input type = "text" name = "mult2" value = "${calculator.mult2}"  size = "2"/>=<input type = "text" name = "product" value = ''  size = "2" readonly/><br/>
    <input type = "submit" value = "Submit"/>

</form>
</body>
</html>

