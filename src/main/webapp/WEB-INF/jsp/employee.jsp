<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<div class="page-header"><h1>Employee</h1></div>

<h2>List of Employees</h2>
<table style="width:100%">
        <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>Wage</th>
        </tr>
<c:forEach items="${types}" var="t">
<tr>      
        <td>${t.getId()}</td>
        <td>${t.getName()}</td>
        <td>${t.getAddress()}</td>
        <td>${t.getCity()}</td>
        <td>${t.getState()}</td>
        <td>${t.getWage()}</td>
</tr>
</c:forEach>
</table>

</div>
</body>
</html>
