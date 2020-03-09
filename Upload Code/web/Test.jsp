<%-- 
    Document   : Test
    Created on : 06-Mar-2020, 18:20:32
    Author     : lkuser
--%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%String file = (String)request.getAttribute("file"); %>
<% BufferedReader in = new BufferedReader(new FileReader(file));
String str;

List<String> list = new ArrayList<String>();
while((str = in.readLine()) != null){
    list.add(str);
    
}

String[] stringArr = list.toArray(new String[0]);

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>     
<table id="customers">
  <tr>
    <th>Line No</th>
    <th>Code Line Statements</th>
    <th>Nkw</th>
    <th>Nid</th>
     <th>Nop</th>
    <th>Nnv</th>
     <th>Nsl</th>
    <th>Cs</th>
  </tr>
   <% for(int i = 0; i< stringArr.length; i++) {%>
  <tr>
      <td><% out.println(i); %></td>
    <td><% out.println(stringArr[i]);%></td>
    <td> </td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr

</table>
<%}%> 
</body>
</html>
