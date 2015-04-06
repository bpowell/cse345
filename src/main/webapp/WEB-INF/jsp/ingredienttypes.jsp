<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<h1 class="page-header" style="font-weight:bold;">Ingredient Types</h1>

<h2>Add Ingredient Type</h2>
<form action="ingredienttypes" method="POST">
    <div class="form-group">
        <label for="ingredientTypeName">Type:</label>
        <input type="text" class="form-control" name="name" id="ingredientTypeName"/>
    </div>
    <button type="submit" class="btn btn-primary">Add</button>
</form>

<br/>

<h2>List of Ingredient Types</h2>
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
