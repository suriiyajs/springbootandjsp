<!DOCTYPE html>
<html lang="en">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<head>
	<title>JS Vehicle Insurance Site | Login Page</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

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
		width: 400px;
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
		min-height: 300px;
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
</style>

<body>

	<header class="header">
		<h5>JS Automobile Insurance</h5>
	</header>
	<div class="content">
		<div class="login">
			<h2 class="heading">Get Policy Id</h2>
			<form action="showpolicy" method="post" class="login-form-c">
				<!-- <input type="number" id="policyid" name="policyid" placeholder="policyid" /> -->
				<input type="text"  name="customerName" placeholder="customerName" required />
				<input type="submit" name="btn" value="Submit" class="login-button"
					style="background-color: #1fe012; color: white;" />

			</form>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
		</script>

</body>

</html>