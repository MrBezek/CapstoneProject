<?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';
$sex = $_POST[stuff][sex];
$customerID = $_POST[stuff][customer];
$lengthofstay = $_POST[stuff][hours];


function setclass($ltr) {
	switch($ltr) {
		case "a":
			return ' class="available" ';
		case "o":
			return ' class="occupied" ';
		case "m":
			return ' class="maint" ';
		case "c":
			return ' class="clean" ';
		default:
			return '';
	}
}


try {

    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	if ($sex == "female") {
			$stmt = $conn->prepare("SELECT * FROM capsule WHERE CapsuleNumber BETWEEN 1 AND 25;");
	} else {
			$stmt = $conn->prepare("SELECT * FROM capsule WHERE CapsuleNumber BETWEEN 26 AND 50;");
	}


	$stmt->execute();
    $results = $stmt->fetchAll();


//pass customer ID
echo "<span id='custID' class='hidden'>" . $customerID . "</span>";
echo "<span id='lengthofstay' class='hidden'>" . $lengthofstay . "</span>";

// Make the table
  echo "<p> Select a capsule for the customer to stay in </p>";
	echo "<table>";
	echo "<tr>";
	echo "<th>Capsule ID</th>";
	echo "<th>Capsule Status</th>";
	echo "</tr>";

  foreach($results as $row) {
		echo "<tr id=\"c" . $row['CapsuleNumber'].'p' . $row['CapsuleStatus'] . "\" " . setclass($row['CapsuleStatus']) . ">";
		echo '<td>' . $row['CapsuleNumber'] . '</td><td>' . $row['CapsuleStatus'] . '</td>';
		echo '<tr>';
	}

	echo "</table>";


    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }


   $conn = null;
?>
