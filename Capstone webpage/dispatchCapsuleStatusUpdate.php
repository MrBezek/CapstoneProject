<?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';
$capStatus = $_POST[stuff][status];
$capID = $_POST[stuff][cap];


try {

    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($capStatus == "maint") {
      $stmt = $conn->prepare("UPDATE capsule
         SET CapsuleStatus='c', Maintenance_MaintenanceID = NULL
         WHERE CapsuleID='$capID';");
    } else {
      $stmt = $conn->prepare("UPDATE capsule
         SET CapsuleStatus='a'
         WHERE CapsuleID='$capID';");
    }

	$stmt->execute();

    if ($capStatus=="clean"){
      echo "Capsule ".$capID." has been updated from cleaning required to available";
    }
    else{
      echo "Capsule ".$capID." has been updated from maintenance required to cleaning required";
    }


    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }


   $conn = null;
?>
