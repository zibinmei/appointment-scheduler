<html><body>

<?php

	$username = $_POST["name"];
	$pass = $_POST["pass"];
	$servername = "127.0.0.1";
	$username = "root";
	$db = "sct";

	$conn = mysqli_connect($servername, $username,"", $db);
	if ($conn->connect_error) {
		echo "Connection Error";
	}
	
	$sql = "INSERT INTO login (username, pass) VALUES ('". $username."','". $pass ."')";
	
	echo "Welcome to the database";
?>
</body>
</html>
