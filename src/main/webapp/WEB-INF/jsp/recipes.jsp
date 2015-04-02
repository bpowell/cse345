<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<div class="page-header"><h1>Recipes</h1></div>

<h2>Insert Requirement</h2>
<form action="recipes" method="POST">
        Name: <input type="text" name="name" /><br />
        Meal Id: <input type="text" name="m" /><br />
        Requirements Id: <input type="text" name="r" /><br />
        Number Sold: <input type="text" name="n" /><br />
        Stars: <input type="text" name="s" /><br />
        Cost: <input type="text" name="c" /><br />
        <input type="submit" value="Add">
</form>
<br />
<br />

<h2>List of Recipes</h2>
<table style="width:100%">
        <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Meal Id</th>
                <th>Requirements Id</th>
                <th>Number Sold</th>
                <th>Stars</th>
                <th>Cost</th>
        </tr>
<c:forEach items="${types}" var="t">
<tr>      
        <td>${t.getId()}</td>
        <td>${t.getName()}</td>
        <td>${t.getMeal_id()}</td>
        <td>${t.getRequirements_id()}</td>
        <td>${t.getNum_sold()}</td>
        <td>${t.getStars()}</td>
        <td>${t.getCost()}</td>
</tr>
</c:forEach>
</table>

</div>
</body>
</html>
