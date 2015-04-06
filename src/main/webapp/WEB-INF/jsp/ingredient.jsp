<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<h1 class="page-header" style="font-weight:bold;">Ingredients</h1>

<h2>Insert Ingredient</h2>

<form action="ingredient" method="POST">
    <div class="form-group">
        <label for="ingredientName">Name:</label>
        <input type="text" class="form-control" name="name" id="ingredientName"/>
    </div>
    <div class="form-group">
        <label for="ingredientQuantity">Quantity:</label>
        <input type="text" class="form-control" name="quantity" id="ingredientQuantity"/>
    </div>
    <div class="form-group">
        <label for="ingredientType">Type Id:</label>
        <input type="text" class="form-control" name="type" id="ingredientType"/>
    </div>
    <div class="form-group">
        <label for="ingredientBoughtDate">Bought Date:</label>
        <input type="text" class="form-control" name="bought_date" id="ingredientBoughtDate"/>
    </div>
    <button type="submit" class="btn btn-primary">Add</button>
</form>

<br/>

<h2>Search for Ingredient</h2>
<form action="search" method="POST">
    <div class="form-group">
        <label for="itemName">Item Name:</label>
        <input type="text" class="form-control" name="name" id="itemName"/>
    </div>
    <div class="form-group">
        <label for="ingredientType">Type:</label>
        <input type="hidden" class="form-control" name="type" value="ingredient" id="ingredientType"/>
    </div>
    <button type="submit" class="btn btn-primary">Search</button>
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
