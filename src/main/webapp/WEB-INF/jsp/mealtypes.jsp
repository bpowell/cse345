<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<div class="page-header"><h1>Meal Types</h1></div>

<h2>Insert Meal Type</h2>
<form action="mealtypes" method="POST">
        Type: <input type="text" name="name" />
        <input type="submit" value="Add">
</form>
<br />

<h2>List of Meal Types</h2>
<table class="table table-striped">
        <tr>
                <th>Id</th>
                <th>Name</th>
        </tr>
<c:forEach items="${types}" var="t">
<tr>      
        <td>${t.getId()}</td>
        <td>${t.getName()}</td>
</tr>
</c:forEach>
</table>

</div>
</body>
</html>
