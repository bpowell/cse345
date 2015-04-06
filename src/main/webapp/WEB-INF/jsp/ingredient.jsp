<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<div class="page-header"><h1>Ingredients</h1></div>

<h2>Insert Ingredient</h2>
<form action="ingredient" method="POST">
        Name: <input type="text" name="name" /><br />
        Quantity: <input type="text" name="quantity" /><br />
        Type Id: <input type="text" name="type" /><br />
        Bought Date: <input type="text" name="bought_date" /><br />
        <input type="submit" value="Add">
</form>
<br />
<form action="search" method="POST">
	Item Name: <input type="text" name="name" />
	<input type="hidden" name="type" value="ingredient" />
	<input type="submit" value="Search">
</form>
<br />
<br />

<h2>List of Ingredients</h2>
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

</div>
</body>
</html>
