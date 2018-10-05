<?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';
$capStatus = $_POST[stuff][capStat];
$capTVRepair = $_POST[stuff][tvR];
$capLightRepair = $_POST[stuff][lR];
$capConsoleRepair = $_POST[stuff][cR];
$capBodyRepair = $_POST[stuff][bR];
$capDetails = $_POST[stuff][details];
$capsuleID = $_POST[stuff][capsuleID];


try {

   $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
   // set the PDO error mode to exception
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if ($capStatus == 'm'){
   $stmt = $conn->prepare("  INSERT INTO maintenance
   (MaintenanceProbTV, MaintenanceProbCC, MaintenanceProbLight, MaintenanceProbBody,
    MaintenanceNotes)
VALUES
   ('$capTVRepair', '$capConsoleRepair', '$capLightRepair', '$capBodyRepair',
     '$capDetails'  )");



 $stmt->execute();
   $lastID = $conn->lastInsertId();

   $stmt = $conn->prepare("  UPDATE capsule
     SET Maintenance_MaintenanceID='$lastID', CapsuleStatus = '$capStatus'
     WHERE CapsuleID=$capsuleID;");

 $stmt->execute();
 }else{
   $stmt = $conn->prepare("  UPDATE capsule
     SET CapsuleStatus = '$capStatus', Maintenance_MaintenanceID= NULL
     WHERE CapsuleID=$capsuleID;");

 $stmt->execute();
 }

 echo "<p>Capsule ".$capsuleID." has been updated as follows: </p>";
 if ($capStatus =="c"){
   echo "<p>Capsule has been updated to cleaning required</p>";
 }
 else{
   echo "Maintenance details: ". $capDetails;
   if ($capTVRepair == "1"){
     echo "<p>Capsule requires repairs to the television</p>";
   }
   if ($capLightRepair == "1"){
     echo "<p>Capsule requires repair to the light</p>";
   }
   if ($capConsoleRepair == "1"){
     echo "<p>Capsule requires repair to the center console</p>";
   }
   if ($capBodyRepair == "1"){
     echo "<p>Capsule requires a body repair</p>";
   }
 }
//End try
   }


catch(PDOException $e)
   {
   echo "Connection failed: " . $e->getMessage();
   }


  $conn = null;
?>
