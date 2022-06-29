<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/adventurework2022?user=root&password=" catalogUri="/WEB-INF/queries/adventureworks2022shipment.xml">

select {[Measures].[Freight],[Measures].[Tax]} ON COLUMNS,
  {([Shipment],[Time].[All Times],[Address],[Product].[All Products])} ON ROWS
from [Jual]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query Adventureworks Shipment Menggunakan Mondrian OLAP</c:set>
