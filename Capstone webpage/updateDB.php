<?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';
$sentdata = $_POST[stuff][forminfo];
$customerID = $_POST[stuff][id];

$personfname = $sentdata[0][0];
$personlname = $sentdata[0][1];
$addressline1 = $sentdata[0][4];
$addressline2 = $sentdata[0][5];
$city = $sentdata[0][6];
$state = $sentdata[0][7];
$zip = $sentdata[0][8];
$lengthofstay = $sentdata[0][3];
$gender = $sentdata[0][2];


$CCnumber = $sentdata[0][9];
$CCexpmonth = $sentdata[0][10];
$CCexpyear = $sentdata[0][11];
$CCsecuritycode = $sentdata[0][12];
$CCnameoncard = $sentdata[0][13];



try {

    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


	$stmt = $conn->prepare("UPDATE person
     SET PersonFirstName='$personfname', PersonLastName='$personlname', PersonAddressLine1='$addressline1',
     PersonAddressLine2='$addressline2', PersonAddressCity='$city', PersonState='$state', PersonZipCode='$zip',
     PersonLengthOfStay='$lengthofstay', PersonGender='$gender'
     WHERE PersonID='$customerID';"
   );



	$stmt->execute();
  $lastID = $conn->lastInsertId();




    $stmt = $conn->prepare("UPDATE billing
    SET
    BillingCCNumber='$CCnumber', BillingCCexpmonth='$CCexpmonth', BillingCCexpyear='$CCexpyear',
    BillingCCSecurity='$CCsecuritycode', BillingCCName='$CCnameoncard'
    WHERE Person_PersonID='$customerID';");

    $stmt->execute();

    $stmt = $conn->prepare("SELECT * FROM capsule WHERE Person_PersonID = '$customerID';");

    $stmt->execute();
      $results = $stmt->fetchAll();

    foreach($results as $row) {
      $newCapsuleSet = $row['CapsuleNumber'];
}

	echo "<span> The Capsule " . $newCapsuleSet . " will be assigned to </span>";
  echo "<span>". $personfname . " ". $personlname . "</span>";
  // Select the current Rate at the capsule hotel
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


catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }


   $conn = null;
?>
