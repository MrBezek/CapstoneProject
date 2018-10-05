<?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';
$capsuleid = $_POST[stuff][cap];
$customerID = $_POST[stuff][id];
$lengthofstay = $_POST[stuff][hours];

try {

    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // Select the clicked capsule
	$stmt = $conn->prepare("SELECT * FROM capsule WHERE CapsuleID = '$capsuleid';");

	$stmt->execute();
    $results = $stmt->fetchAll();
    //Output where the customer is staying
    foreach($results as $row) {
  	echo "<span> The Capsule " . $row['CapsuleID'] . " will be assigned to</span>";
  }
    //Update the capsule with customerID
    $stmt = $conn->prepare("  UPDATE capsule
      SET Person_PersonID=$customerID, CapsuleStatus = 'o'
      WHERE CapsuleID=$capsuleid;"
);

    $stmt->execute();
    //Select the customer ID
    $stmt = $conn->prepare("SELECT * FROM person WHERE PersonID = '$customerID';");

    $stmt->execute();
      $results = $stmt->fetchAll();

      //Output the customers Name

	foreach($results as $row) {
	echo "<span> " . $row['PersonFirstName'] . ' ' . $row['PersonLastName'] . "</span>";
}

      //Select the current Rate at the capsule hotel
      $stmt = $conn->prepare("SELECT * FROM cost
        ORDER BY costKey DESC
        LIMIT 1;");

      $stmt->execute();
        $results = $stmt->fetchAll();

        foreach($results as $row) {
        echo "<p> Total Duration: " . $lengthofstay .  " Hours</p>";
      	echo "<p> Total Cost: $" . $row['cost']*$lengthofstay .  "</p>";
      }
    }


		//catch if it fails
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }

		//delete connection data
   $conn = null;
?>
