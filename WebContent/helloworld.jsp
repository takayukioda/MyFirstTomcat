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
  ここに日本語をぶち込むと、何が起きるの？
  MAKE IT <%= Formatter.toLower("LOWER") %>

  server time is <div><%= new java.util.Date() %></div>
  UTF-8?ここに日本語をぶち込むと、何が起きるの？
  MAKE IT <%= Formatter.toLower("LOWER") %>

</body>
</html>