<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<jsp:directive.include file="header.jsp" />

<div class="page-header"><h1>Menu Items</h1></div>

<h2>Insert Menu Items</h2>
<form action="menu_items" method="POST">
        Name: <input type="text" name="name" /><br />
        Meal Id: <input type="text" name="m" /><br />
        Recipes Id: <input type="text" name="r" /><br />
        Number Sold: <input type="text" name="n" /><br />
        Stars: <input type="text" name="s" /><br />
        Cost: <input type="text" name="c" /><br />
        <input type="submit" value="Add">
</form>
<br />
<br />

<h2>List of Menu Items</h2>
<table style="width:100%">
        <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Meal Id</th>
                <th>Recipes Id</th>
                <th>Number Sold</th>
                <th>Stars</th>
                <th>Cost</th>
                <th>More Info</th>
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
        <td><button onclick="dostuff(${t.getId()})">Show</button></td>
</tr>
</c:forEach>
</table>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</div>
<script type="text/javascript">

      function dostuff(id) {
        $.ajax({
          url: "rinfo",
          dataType: "html",
          type: "POST",
          data: "id="+id,
          success: function(data) {
            $('#myModal').modal('toggle');
            $('.modal-body').html(data);
          }.bind(this),
        });
      }
    
</script>
</body>
</html>
