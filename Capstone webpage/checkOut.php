<?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';
$custID = $_POST[stuff][id];
$capsuleid = $_POST[stuff][cap];




try {

    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


		$stmt = $conn->prepare("UPDATE capsule
      SET Person_PersonID=NULL, CapsuleStatus = 'c'
      WHERE CapsuleID=$capsuleid;");


	$stmt->execute();


  $stmt = $conn->prepare("SELECT * FROM person WHERE PersonID = '$custID';");


$stmt->execute();
  $results = $stmt->fetchAll();


foreach($results as $row) {
echo "<span> " . $row['PersonFirstName'] . ' ' . $row['PersonLastName'] . " has been successfully checked out of capsule " . $capsuleid . "</span>";
}

  //End Try
  }


catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }


   $conn = null;
?>
