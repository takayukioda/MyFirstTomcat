<%@page import="jp.co.givery.training.Formatter"%>
<%@ page language="java" contentType="text/html; charset=Windows-31J" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
    <title>MyFirstTomcat</title>
  </head>
<body>
  server time is <div><%= new java.util.Date() %></div>
  �����ɓ��{����Ԃ����ނƁA�����N����́H
  MAKE IT <%= Formatter.toLower("LOWER") %>

  server time is <div><%= new java.util.Date() %></div>
  UTF-8?�����ɓ��{����Ԃ����ނƁA�����N����́H
  MAKE IT <%= Formatter.toLower("LOWER") %>

</body>
</html>