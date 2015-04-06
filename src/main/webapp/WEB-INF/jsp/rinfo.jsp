<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>

<h2>${name}</h2>
<div class="alert alert-success" role="alert">
    <span style="font-size:1.75em;"><b>${num}</b></span> left!
</div>
<table class="table table-striped">
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
