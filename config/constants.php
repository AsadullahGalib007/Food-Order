<?php	
	//Session
	session_start();

	//Constants
	define('SITEURL', 'http://localhost/Food-Order/');
	define('LOCALHOST', 'localhost');
	define('DB_USERNAME', 'root');
	define('DB_PASSWORD', '');
	define('DB_NAME', 'food_order');

	//connecting to db
		$conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD, DB_NAME) or die(mysqli_error()); 
		$db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); //SElecting Database
	
?>