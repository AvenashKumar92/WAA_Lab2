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
    <title>Title</title>
</head>
<body>
    <form action="calc2" method="post">
        <input type = "number" name = "add1" size = "2"  value = "${calculator.add1}" />+
        <input type = "number" name = "add2" value = "${calculator.add2}" size = "2"/>=<input type = "number" name = "sum" value =  "${calculator.sum}" size = "2" readonly/><br/>
        <input type = "number" name = "mult1" value = "${calculator.mult1}" size = "2"/>*
        <input type = "number" name = "mult2" value = "${calculator.mult2}" size = "2"/>=<input type = "number" name = "product" value = "${calculator.product}"  size = "2" readonly/><br/>
        <input type = "submit" value = "Submit"/>
    </form>
</body>
</html>
