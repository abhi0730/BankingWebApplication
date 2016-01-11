<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="./resources/cssFiles/accountpage.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="./resources/jsFiles/accountPage.js"></script>


<title>Applications Page</title>
</head>

<body>

	<div class="container-fluid">
		<div id="top">
			<form action="./BankLoginPage.html" method="post">
				<input type="submit" class="btn btn-danger" value="LogOut"
					style="float: right;" onclick="logout" />
			</form>
			<h1 class="text-center">
				<%
					String st = (String) session.getAttribute("accountName");
					out.println("<center><h1>Hi " + st + "</h1></center>");
				%>

			</h1>
		</div>
		<form action="./AccountOperationServelt" method="post">
		<div id="left">
			<ul id="leftList" class="nav nav-pill nav-stacked">
				<li id="homeLink"><label><u>Home</u></label></li>
				<li id="creditLink"><label><u>Credit balance</u></label></li>
				<li id="debitLink"><label><u>Debit balance</u></label></li>
				<li id="transLink"><label><u>Resent transactions</u></label></li>
				<li></li>
			</ul>
		</div>

		<div id="content">
			<div id="homeid">
				<label>Your Account balance is <%=session.getAttribute("balance") %></label> <br /> <label>You
					can perform any actions by selecting the appropriate menu item</label>
			</div>
			<div id="creditid">
				<fieldset>
					<legend> Credit Balance into Account</legend>
					Credit Balance: <input type="text" name="credit" /> <input
						type="submit" name="operation" value="Credit" />
				</fieldset>
			</div>
			<div id="debitid">
				<fieldset>
					<legend> Debit Balance into Account</legend>
					Debit Balance: <input type="text" name="debit" /> <input
						type="submit" name="operation" value="Debit" />
				</fieldset>
			</div>
			<div id="transid">
				<h1>
					<center>Recent Transactions</center>
				</h1>
				<table class="table table-bordered">
					<tr>
						<th><u>Transaction Number<u>
									</td>
									<th><u>SampleName</u>
								</td>
									<th><u>Credit</u>
								</td>
									<th><u>Debit</u></th>
									<th><u>Totoal Amount</u></th>
					</tr>
					<tr>

						<td>TN1</td>
						<td>SampleName1</td>
						<td>100</td>
						<td>94</td>
						<td>200</td>

					</tr>
					<tr>

						<td>TN2</td>
						<td>SampleName2</td>
						<td>200</td>
						<td>90</td>
						<td>1000</td>

					</tr>
					<tfoot>
						<tr>
							<td><b><u><hr> Total
										<hr></u></b></td>
							<td><hr> Total Balance
								<hr></td>
							<td><hr> 1200
								<hr></td>
							<td><hr> 1300
								<hr></td>
							<td><hr> 1200
								<hr></td>

						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</form>
	</div>
</body>
</html>