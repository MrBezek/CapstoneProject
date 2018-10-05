<?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';
$sentdata = $_POST[stuff][forminfo];

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

    $stmt = $conn->prepare("  INSERT INTO person
    (PersonFirstName, PersonLastName, PersonAddressLine1, PersonAddressLine2,
     PersonAddressCity, PersonState, PersonZipCode, PersonLengthOfStay, PersonGender)
VALUES
    ('$personfname', '$personlname', '$addressline1', '$addressline2',
      '$city', '$state', '$zip', '$lengthofstay', '$gender'  )");

	$stmt->execute();
  $lastID = $conn->lastInsertId();
    $stmt = $conn->prepare("  INSERT INTO billing
      (BillingCCNumber, BillingCCexpmonth, BillingCCexpyear, BillingCCSecurity,
       BillingCCName, Person_PersonID)
    VALUES
      ('$CCnumber', '$CCexpmonth', '$CCexpyear', '$CCsecuritycode',
        '$CCnameoncard', '$lastID' )");

    $stmt->execute();
    $jsonData = array(
      "customer" => $lastID,
      "sex" => $gender,
      "hours" => $lengthofstay
    );
    echo json_encode($jsonData);
  }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }


   $conn = null;
?>
