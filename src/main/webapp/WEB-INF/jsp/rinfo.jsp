<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>

<h2>${name}</h2>
<table style="width:100%">
        <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Type Id</th>
                <th>Bought Date</th>
        </tr>
<c:forEach items="${types}" var="t">
<tr>      
        <td>${t.getId()}</td>
        <td>${t.getName()}</td>
        <td>${t.getQuantity()}</td>
        <td>${t.getType_id()}</td>
        <td>${t.getBought_date()}</td>
</tr>
</c:forEach>
</table>
