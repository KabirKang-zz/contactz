<html>
<head>
</head>
<body>
	<%@ page import="javax.jdo.PersistenceManager"%>
	<%@ page import="com.kangk.contactz.PMF"%>
	<%@ page import="com.kangk.contactz.contact"%>
	<%@ page import="javax.jdo.Query"%>
	<%@ page import="java.util.List"%>
	<%

	PersistenceManager pm = PMF.getPMF().getPersistenceManager();
	Query q = pm.newQuery(contact.class);
	
	try {
	  List<contact> results = (List<contact>) q.execute();
	  if (!results.isEmpty()) {
	    for (contact c : results) {
	      // Process result c
	    	out.write(c.getName() + c.getAddress() + c.getEmail()
					+ c.getPhone());
	    }
	  } else {
	    // Handle "no results" case
	    out.write("No results");
	  }
	} finally {
	  q.closeAll();
	}
	%>
</body>
</html>

