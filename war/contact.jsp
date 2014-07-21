<html>
<head>
</head>
<body>
<form action = "contact.jsp" method = "post">
<table>
<tr>
<td>
<label for="name">Name</label>
<input type="text" id="name" name="name" />
</td>
</tr>
<tr>
<td>
<label for="address">Address</label>
<input type="text" id="address" name="address" />
</td>
</tr>
<tr>
<td>
<label for="email">Email</label>
<input type="text" id="email" name="email" />
</td>
</tr>
<tr>
<td>
<label for="phone">Phone</label>
<input type="text" id="phone" name="phone" />
</td>
</tr>
<tr>
<td>
<input type="submit" value="Submit" />
</td>
</tr>
</table>
</form>

<a href = "list.jsp">Contact List</a>

<%@ page import="javax.jdo.PersistenceManager" %> 
<%@ page import="com.kangk.contactz.PMF" %> 
<%@ page import="com.kangk.contactz.contact" %> 


<%
 PersistenceManager pm = PMF.getPMF().getPersistenceManager();
 try { 
 contact obj = new contact(); 
 obj.setName(request.getParameter("name"));
 obj.setAddress(request.getParameter("address"));
 obj.setEmail(request.getParameter("email"));
 obj.setPhone(request.getParameter("phone"));

 pm.makePersistent(obj);
 } finally { 
pm.close();
} 
%>

</body>
</html>