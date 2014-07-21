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