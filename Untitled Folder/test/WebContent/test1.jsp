<html>
<head><title>Hello World</title></head>
<body>
Hello World!<br/>	
<%@ page import="test.Simple" %>
<%  Simple demo = new Simple();
	demo.retur();%>
<%
out.println("Your IP address isfo " + request.getRemoteAddr());
%>
</body>
</html>
