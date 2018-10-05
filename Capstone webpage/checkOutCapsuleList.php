 <?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';



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


		$stmt = $conn->prepare("SELECT * FROM capsule WHERE Person_PersonID IS NOT NULL ORDER BY CapsuleNumber;");


	$stmt->execute();
    $results = $stmt->fetchAll();

// Make the table

	echo "<table>";
	echo "<tr>";
	echo "<th>Capsule ID</th>";
	echo "<th>Resident</th>";
	echo "</tr>";

	foreach($results as $row) {
    $currentPerson = $row['Person_PersonID'];
    $stmt1 = $conn->prepare("SELECT * FROM person WHERE PersonID = '$currentPerson';");

  $stmt1->execute();
    $results1 = $stmt1->fetchAll();
    foreach ($results1 as $row1) {
      $fname = $row1['PersonFirstName'];
      $lname = $row1['PersonLastName'];
    }
    echo "<tr id=\"c" . $row['CapsuleNumber'] ."p". $row['Person_PersonID'] . "\" " . setclass('a') . ">";
    echo '<td>' . $row['CapsuleNumber'] . '</td><td>' . $fname . " " . $lname . '</td>';
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
