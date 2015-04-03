<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>

<table style="width:100%">
        <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Meal Id</th>
                <th>Recipes Id</th>
                <th>Number Sold</th>
                <th>Stars</th>
                <th>Cost</th>
        </tr>
<c:forEach items="${types}" var="t">
<tr>      
        <td>${t.getId()}</td>
        <td>${t.getName()}</td>
        <td>${t.getMeal_id()}</td>
        <td>${t.getRecipes_id()}</td>
        <td>${t.getNum_sold()}</td>
        <td>${t.getStars()}</td>
        <td>${t.getCost()}</td>
</tr>
</c:forEach>
</table>
