<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="<c:url value="/img/favicon.ico"/>" />

    <%-- Bootstrap core CSS --%>
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
  </head>

	<body>
    ${type}
    <br />
    ${size}
	</body>
</html>
