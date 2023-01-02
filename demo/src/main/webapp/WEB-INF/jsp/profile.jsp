<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<head>
	<title>User Data</title>
</head>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<style>
	* {
		font-family: Verdana, Geneva, Tahoma, sans-serif;
	}

	.header {
		background-color: #1fe012;
		min-height: 30px;
		color: white;
		padding: 5px;
		margin-bottom: 10px;
	}

	.content {
		display: flex;
		justify-content: center;
		align-items: center;
		margin-top: 50px;
	}

	.login {
		/* padding: 0 40px 40px; */
		border: 1px solid transparent;
		width: 600px;
		border-radius: 25px;
		color: white;
		box-shadow: 2px 2px 8px 1px #bfbfbf;
	}

	.login * {
		padding: 10px;
	}

	.login .heading {
		display: flex;
		justify-content: center;
		border-radius: 25px 25px 0 0;
		background-color: #1fe012;
	}

	.login-form-c {
		display: flex;
		flex-direction: column;
		align-items: center;
		min-height: 400px;
		justify-content: space-between;
	}

	.login-form-c input {
		width: 100%;
		border-radius: 30px;
		border: none;
		color: black;
		background-color: #ececec;
	}

	.register {
		color: #1fe012;
		text-decoration: none;
	}

	.terms {
		color: black;
		display: flex;
		justify-content: flex-start;
	}
</style>

<body>
	<header class="header">
		<h5>Personal Information</h5>
	</header>
	<a href="home" id="home">Back To Home</a>
	<div class="content">
		<div class="login">
			<h5 style="color:  rgb(196, 73, 73);">${AddednewCustomer}</h5>
			<h2 class="heading">Register</h2>
			<form action="save-newprofile" method="post" class="login-form-c">s
				<input type="text" name="customerName" placeholder="Full Name" required />
				<input type="text" name="address" placeholder="Address" required />
				<input type="number" name="pincode" placeholder="Pin code" maxlength="6" required />
				<input type="number" name="contact" placeholder="Mobile Number" maxlength="10" required />
				<input type="email" name="email" placeholder="Email-Id" required />
				<!-- <div style="color: black; display: flex; align-items:center;">
					<label style="color:black;">Select Gender</label>
					<select class="form-select form-select-sm" aria-label=".form-select-sm example">
						<option selected>Choose..</option>
						<option name="gender" value="1">Male</option>
						<option name="gender"  value="2">Female</option>
						<option name="gender" value="3">Other</option>
					</select> -->
				<!-- </div> -->
				<div style="color: black; display: flex; align-items: center;">
					Gender:
					<div style="display: flex;">
						<input type="radio" name="gender" value="male" placeholder="Male" checked required>
						Male
					</div>
					<div style="color: black; display: flex;">
						<input type="radio" name="gender" style="color: black;" value="female" placeholder="Female"
							checked required>
						Female
					</div>
					<div style="color: black; display: flex;">
						<input type="radio" name="gender" style="color: black;" value="other" placeholder="Other"
							checked required>
						Other
					</div>
				</div>
				<label style="color: black;">Date Of Birth</style></label>
				<input type="date"  name="dateOfBirth" placeholder="Date of Birth" required />
				<input type="text" name="vehicleManufacturer" placeholder="vehicle Manufacturer" required />
				<input type="text" name="vehicleModel" placeholder="Model of Your Vehicle" required />
				<input type="text" name="vehicleVIN" placeholder="Vehicle Information Number" required />
				<input type="text" name="vehiclePrice" placeholder="Price of the Vehicle" required />
				<label style="color: black;">Vehicle Year Of Manufacture</style></label>
				<input type="number"  min='2005' max='2022' step='1' valuse='2022'name="VehicleYearOfManufacture"required />
				<label style="color: black;">Coverage Starting Date</style></label>
				<input type="date" name="startingDate" placeholder="Starting Date"  required />
				<input type="number" min="800" max="3000" step="100" value="800" name="vehiclecc" placeholder="Vehicle CC" required />
				<input type="submit" value="Create Profile" style="background-color: #1fe012;" />
				<input type="reset" style="background-color: rgb(223, 45, 45);" />
			</form>
		</div>
	</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>

</html>