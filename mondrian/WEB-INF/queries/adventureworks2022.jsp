<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/adventurework2022?user=root&password=" catalogUri="/WEB-INF/queries/adventureworks2022.xml">

select {[Measures].[Total Purchase],[Measures].[Orderqty]} ON COLUMNS,
  {([Territory],[Time].[All Times],[Customer],[Product].[All Products])} ON ROWS
from [Jual]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query Adventureworks Sales Menggunakan Mondrian OLAP</c:set>
