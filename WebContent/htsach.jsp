<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">WebSiteName</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="htsach.jsp">Sách <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="htgiohang.jsp">Giỏ hàng</a>
      </li>
        <%if(session.getAttribute("un")!=null){ %>
	    <li class="nav-item">
	      <a class="nav-link" href="#"><%=session.getAttribute("un") %></a>
	    </li>
	    <%}else{ %>
	    <li class="nav-item">
	      <a class="nav-link" href="login.jsp"><i class="fas fa-user"></i> Đăng nhập</a>
	    </li>
	    <%} %>
       <li class="nav-item">
        <a class="nav-link" href="#"><i class="fas fa-sign-out-alt"></i> Đăng Xuất</a>
      </li>
  </div>
</nav>
	<table class="mt-3" align="center" width="1000">
		
				<% 
					
				ArrayList<sachbean> ds =(ArrayList<sachbean>) request.getAttribute("dssach");
				int ss = ds.size();
				for( int i=0;i<ss;i++) {
					sachbean sach = ds.get(i);
				%>
				<tr>
				<td><img src='<%=sach.getAnh() %>'><br>
					<%=sach.getTensach() %> <br>
					<%=sach.getGia() %> <hr>
					<a href="mua.jsp?ms=<%=sach.getMasach() %>&ts=<%=sach.getTensach() %>&tg=<%=sach.getTacgia() %>&gia=<%=sach.getGia() %>"><img src="image_sach/buynow.jpg"></a>
				</td>
				<% 
				i++;
				if(i<ss){
					sach = ds.get(i); %>
					<td><img src='<%=sach.getAnh() %>'> <br>
					<%=sach.getTensach() %> <br>
					<%=sach.getGia() %> <hr>
					<a href="mua.jsp?ms=<%=sach.getMasach() %>&ts=<%=sach.getTensach() %>&tg=<%=sach.getTacgia() %>&gia=<%=sach.getGia() %>"><img src="image_sach/buynow.jpg"></a>
					</td>
				<% } %>
			</tr>	
		<% } %>
	</table>
<script src="https://code.jquery.com/jquery-	3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>