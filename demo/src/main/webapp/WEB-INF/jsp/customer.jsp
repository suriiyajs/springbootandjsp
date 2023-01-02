<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Policy details</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div align="center">
		<h1>Customer Policy</h1>
		<h3><p> Payment Details of Your Policy</p>
		<a href="createpolicy">Edit Policy</a></h3>	
				
		<table border="1">
		<tr>
			<th>Policy Id</th>
			<th>Ex-Showroom Price</th>
			<th>Depreciation Value in %(Based on Vehicle Manufacturing Year)</th>
			<th>Insured Declared value(Ex-showroom Price - Depreciation)</th>
			<th>Own Damage Premium(3 % of Insured Amount)</th>
			<th>Discount in %(Provided by Insurance Company) </th>
			<th>Total Own Premium</th>
			<th>Third Party Premium(50% of Own Damage Premium)</th>
			<th>PA cover(Compulsary coverage)</th>
			<th>Net Premium</th>
			<th>Service Tax(12.5% of Net Premium)</th>
			<th>Total Premium(For One year)</th>
			<th>Final Premium(Amount you have to Pay)</th>
		</tr>	
		<c:forEach var="customer" items="${result}" varStatus="status">
		<tr>
			<td>${result.policyid}</td>
			<td>${result.vehiclePrice}</td>
			<td>${result.depreciation}</td>
			<td>${result.suminsured}</td>
			<td>${result.ownpremium}</td>
           <td>${result.discount}</td>
		   <td>${result.totalownpremium}</td>
		   <td>${result.thirdparty}</td>
		   <td>${result.pacover}</td>
		   <td>${result.netpremium}</td>
		   <td>${result.servicetax}</td>
		   <td>${result.totalpremium}</td>
		   <td>${result.finalpremium}</td>
		   
		</tr>
		</c:forEach>
		</table>
	</div>
</body>
</html>
