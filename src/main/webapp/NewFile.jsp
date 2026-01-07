<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.servlet.http.HttpSession"%>
 <%
 //String msg = (String)request.getAttribute("message");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>From to</title>

</head>
<body>
	<p style="color: red;">
	<%if(request.getAttribute("message") != null){ %>
	<%=request.getAttribute("message") %>
	<%}else{
	}%>
	</p>
<%-- <p><%=session.getAttribute("search") %></p> --%>
	<p>FromTo検索</p>
	<form action="/Marimo_Internship/Top/ResultFromto" method="Get" name="search1">
		<input type="number" name="start" placeholder="from" autocomplete="off" value="<%=session.getAttribute("start") %>" required>
		<input type="number" name="end" placeholder="to" autocomplete="off" value="<%=session.getAttribute("end") %>" required>
		<input type="submit" value="検索">
	</form>
	<hr>
	<form action="/Marimo_Internship/Top/Search" method="get" name="search2">
	<p>郵便番号検索</p>
		<input type="number" name="bango" placeholder="郵便番号(ハイフン省略)" autocomplete="off" value="<%=session.getAttribute("bango") %>" required>


		<select name="searchType" id="search">
			<option value="1">あいまい検索</option>
			<option value="2">前方一致検索</option>
			<option value="3">後方一致検索</option>
		</select>

		<select name="sortType" id="sortType">
			<option value="1">NO順</option>
			<option value="2">郵便番号順</option>
			<option value="3">都道府県順</option>
		</select>

		<select name="sort" id="sort">
			<option value="1">昇順</option>
			<option value="2">降順</option>
		</select>
		<input type="submit" value="検索">
	</form>

	<script type="text/javascript">
		document.getElementById("search").querySelector("option[value='<%=session.getAttribute("search")%>']").setAttribute("selected", "selected");
		document.getElementById("sortType").querySelector("option[value='<%=session.getAttribute("sortType")%>']").setAttribute("selected", "selected");
		document.getElementById("sort").querySelector("option[value='<%=session.getAttribute("sort")%>']").setAttribute("selected", "selected");
	</script>

</body>
</html>