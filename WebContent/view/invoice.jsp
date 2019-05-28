<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
   	<table border="1" id="table">
   		<tr>
   			<td colspan="5" align="center"><h1><strong>INVOICE</strong></h1></td>
   		</tr>
   		<tr>
   			<td colspan="3"><strong>Seller:</strong><%=request.getAttribute("seller")%></td>
   			<td colspan="2"><strong>Invoice No and date:</strong></td>
   		</tr>
   		<tr>
   			<td colspan="3"><%=request.getAttribute("comAddress")%></td>
   			<td colspan="2"><%=request.getAttribute("nonum")%></td>
   		</tr>
   		<tr>
   			<td colspan="3"></td>
   			<td colspan="2"><%=request.getAttribute("date")%></td>
   		</tr>
   		<tr>
   			<td colspan="3" rowspan="2">
   			<c:if test="${attrSource == 1 && auth == 1}">
   			<strong>To:</strong><%=request.getAttribute("address")%>
   			</c:if>
   			<c:if test="${attrSource == 0}">
   			<strong>To:</strong><%=request.getAttribute("address")%>
   			</c:if>
   			</td>
   			<td colspan="2"><strong>Term of delivery and payment:</strong></td>
   		</tr>
   		<tr>
   			<td colspan="2"><%=request.getAttribute("transaction1")%></td>
   		</tr>
   		<tr>
   			<td><strong>Vessel/flight:</strong></td>
   			<td><strong>From:</strong></td>
   			<td><strong>TO:</strong></td>
   			<td><strong>B/L No:</strong></td>
   			<td><strong>Sailing Date:</strong></td>
   		</tr>
   		<tr>
   			<td><%=request.getAttribute("transaction2")%></td>
   			<td><%=request.getAttribute("fromwhere")%></td>
   			<td><%=request.getAttribute("towhere")%></td>
   			<td></td>
   			<td><%=request.getAttribute("saildate")%></td>
   		</tr>
   		<tr>
   			<td rowspan="2"><strong>SHIPPING MARKS</strong></td>
   			<td><strong>ITEM Name of Commodity</strong></td>
   			<td><strong>Quantity</strong></td>
   			<td><strong>Unit Price</strong></td>
   			<td><strong>Amount</strong></td>
   		</tr>
   		<tr>
   			<td><strong>Specification</strong></td>
   			<td><strong>PCS</strong></td>
   			<td><strong><%=request.getAttribute("currency")%></strong></td>
   			<td><strong><%=request.getAttribute("currency")%></strong></td>
   		</tr>
   		<tr>
   		
   			<td colspan="4"></td>
   			<td><%=request.getAttribute("totalPrice")%></td>
   		</tr>
   		<tr>
   			<td colspan="5"><strong>TOTAL: ShippingCost <%=request.getAttribute("yunfei")%></strong></td>
   		</tr>
   		<tr>
   			<td colspan="5"><strong>TOTAL:<%=request.getAttribute("totalMoney")%></strong></td>
   		</tr>
   	</table>
   	<script type="text/javascript">
	  var tab=document.getElementById("table");
	  <%
	  if(request.getAttribute("total")!=null)
	  {
		  int total=(Integer)request.getAttribute("total");
		  for(int j=0;j<total;j++){
			  
	  %>
		  var newTR =tab.insertRow(tab.rows.length-3);
		  var newNameTD = newTR.insertCell(0);
		  newNameTD.innerHTML = "<%=request.getAttribute("shopingmark"+j)%>";
		  //newNameTD.rowspan=<%=total%>; 
		  var newNameTD1 = newTR.insertCell(1);
		  newNameTD1.innerHTML = "<%=request.getAttribute("itemall"+j)%>";
		  var newNameTD2 = newTR.insertCell(2);
		  newNameTD2.innerHTML = "<%=request.getAttribute("quantity"+j)%>";
		  var newNameTD3 = newTR.insertCell(3);
		  newNameTD3.innerHTML = "<%=request.getAttribute("trueprice"+j)%>";
		  var newNameTD4 = newTR.insertCell(4);
		  newNameTD4.innerHTML = "<%=request.getAttribute("amount"+j)%>";
	  <%
	  }
	  }
	  %>
  </script>
   <br/>
  </body>
</html>
