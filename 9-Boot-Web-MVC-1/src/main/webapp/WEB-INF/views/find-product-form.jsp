<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

  
  function validateData(){
		
		let id=document.querySelector("#id");
		
		if(id.value=="" || id.value==NaN || id.value==" "){
		
		   document.querySelector("#idError").innerHTML="ID Must Be Required";
		   
		   return false;
		
		}
		
		return true;
		
	
	
  }



</script>
</head>
<body>

	<h1 align="center">Product Form</h1>
	<hr />

	<jsp:include page="./menu.jsp" />
	<form:form action="./findProduct" method="post"
		onSubmit="return validateData()">

		<table align="center">
			<tr>
				<th>Product ID</th>
				<td><select name="id" id="id">
				<option>
				--select--
				</option>
				<c:forEach var="prod" items="${products}">
				<option>
				${prod.id}
				</option>
				</c:forEach>
				</select></td>
				<td><span id="idError"></span> <span>${message}</span></td>
			</tr>


			<tr>
				<th colspan="2">
					<button type="submit">Go</button>
					<button type="reset">Clear All</button>
				</th>
			</tr>


		</table>
	</form:form>

	<hr />


</body>
</html>