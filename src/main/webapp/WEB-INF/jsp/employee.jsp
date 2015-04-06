<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<h1 class="page-header" style="font-weight:bold;">Employee</h1>

<h2>List of Employees</h2>
<table class="table table-striped">
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
