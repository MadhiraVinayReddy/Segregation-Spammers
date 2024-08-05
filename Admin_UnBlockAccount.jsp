	<%@ include file="connect.jsp" %>
 	<%
			String community=request.getParameter("community");
		    String uname=request.getParameter("uname");
  		
   	try {
		   
		    
			String id=request.getParameter("id");
			String id1=request.getParameter("id1");
			String str = "Normal";
			String astr1 = "No Spamming Activities";
			String astr2 = ".";
       		Statement st1 = connection.createStatement();
       		String query1 ="update user set ac_status='"+str+"',ac_status_reason='"+astr1+"',interaction_reason='"+astr2+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			String str1 = "Request Processed";
			Statement st2 = connection.createStatement();
       		String query2 ="update unblock_req set req_status='"+str1+"' where id="+id1+" ";
	   		st2.executeUpdate (query2);
			connection.close();
			out.println("<h2>Unblock Succcessful</h2>")  ;
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
	
	<p align="center"><a href="Admin_ViewUnblockReq2.jsp?uname=<%=uname%>&community=<%=community%>" class="style95">Back</a></p>
