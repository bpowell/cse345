<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<div class="page-header"><h1>Recipes</h1></div>

<h2>Insert Recipe</h2>
<form action="recipes" method="POST">
        Menu Item Id: <input type="text" name="menu_item" /><br />
        Ingredient Id: <input type="text" name="ingredient" /><br />
        <input type="submit" value="Add">
</form>
<br />
<br />

<h2>List of Recipes</h2>
<table style="width:100%">
        <tr>
                <th>Id</th>
                <th>Menu Item Id</th>
                <th>Ingredient Id</th>
        </tr>
<c:forEach items="${types}" var="t">
<tr>      
        <td>${t.getId()}</td>
        <td>${t.getMenuItems_id()}</td>
        <td>${t.getIngredient_id()}</td>
</tr>
</c:forEach>
</table>

</div>
</body>
</html>
