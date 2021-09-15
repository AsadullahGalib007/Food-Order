<link rel="stylesheet" type="text/css" href="../css/admin.css">
<?php include('partials/menu.php'); ?>

<div class="main-content">
	<div class="wrapper">
		<h1>ADD ADMIN</h1><br>

		<?php 
			if(isset($_SESSION['add'])){
				echo $_SESSION['add'];
				unset($_SESSION['add']);
			}
		?>


		<form action="" method="POST">

            <table class="tbl-30">
                <tr>
                    <td>Full Name: </td>
                    <td>
                        <input type="text" name="full_name" placeholder="Enter Your Name">
                    </td>
                </tr>

                <tr>
                    <td>Username: </td>
                    <td>
                        <input type="text" name="username" placeholder="Your Username">
                    </td>
                </tr>

                <tr>
                    <td>Password: </td>
                    <td>
                        <input type="password" name="password" placeholder="Your Password">
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" name="submit" value="Add Admin" class="btn-secondary">
                    </td>
                </tr>

            </table>

        </form>

	</div>
</div>

<?php include('partials/footer.php'); ?>


<?php
	//Process the value from the Form and save it in a Database
	//Check wheather the SUBMIT button is clicked or not
	if(isset($_POST['submit'])){

		//Getting the data from the FORM
		$full_name = $_POST['full_name'];  //$_POST['variable'] = <input name="variable">
		$username = $_POST['username'];
		$password = md5($_POST['password']);

		//SQL Query to save the date into Database
		$sql = ("INSERT INTO tbl_admin SET 
			full_name = '$full_name',
			username = '$username',
			password = '$password'
		") or die(mysqli_error());

		// if ($nameErr != NULL or $unameErr != NULL or $passErr != NULL) {
		// 	$res = mysqli_query($conn, $sql); //Execution
		// }
			
		$res = mysqli_query($conn, $sql) or die(mysqli_error()); //Execution

		//Checking if the execution is done properly
		if ($res == TRUE) {
			$_SESSION['add'] = "<div class = 'success'>Admin Added Successfully</div>";

			//Redirect to Manage Admin page
			header("location:".SITEURL.'admin/manage-admin.php');
		}
		else{
			$_SESSION['add'] = "<div class = 'error'>Failed to Add Admin</div>";
			//Redirect to Add Admin page
			header("location:".SITEURL.'admin/add-admin.php');
		}
	}

?>