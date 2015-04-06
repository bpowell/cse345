<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<h1 class="page-header" style="font-weight:bold;">Recipes</h1>

<h2>Insert Recipe</h2>
<form action="recipes" method="POST">
    <div class="form-group">
        <label for="menuItemId">Menu Item Id:</label>
        <input type="text" class="form-control" name="menu_item" id="menuItemId"/>
    </div>
    <div class="form-group">
        <label for="ingredientId">Ingredient Id:</label>
        <input type="text" class="form-control" name="ingredient" id="ingredientId"/>
    </div>
    <button type="submit" class="btn btn-default">Add</button>
</form>

<br/>
<br/>

<h2>List of Recipes</h2>
<table class="table table-striped">
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
