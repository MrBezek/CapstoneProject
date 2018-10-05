<?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';
$capID = $_POST[stuff][cap];

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

			$stmt = $conn->prepare("SELECT * FROM capsule WHERE CapsuleNumber = $capID;");

	$stmt->execute();
    $results = $stmt->fetchAll();
// onclick="startFinishedWork('$capID')
// Make the table
  echo "<span id=\"capsuleIDpass\" class=\"hidden\">".$capID."</span>";
  echo "<p> Are you sure you are finished with work on this capsule? </p>";
  echo '<a class="choiceButton" id="yes">Yes</a>';
  echo '<a class="choiceButton" href="Dispatch.html">No</a>';
	echo "<table>";
	echo "<tr>";
	echo "<th>Capsule ID</th>";
	echo "<th>Capsule Status</th>";
	echo "</tr>";

  foreach($results as $row) {
		echo "<tr id=\"c" . $row['CapsuleNumber'] . "\" " . setclass($row['CapsuleStatus']) . ">";
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
