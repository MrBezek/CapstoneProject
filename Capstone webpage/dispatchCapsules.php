<?php

$servername = 'localhost:8889';
$username = 'root';
$password = 'root';
$dbname = 'capsule_hotel';
$capID = $_POST[stuff];
$capID = substr($capID, 1);


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

// Make the table
 echo '<span id="capsuleidpass" class="hidden">' . $capID . '</span>';
 echo "<span>You have selected capsule " . $capID . "</span>";
 echo "<table>";
 echo "<tr>";
 echo "<th>Capsule ID</th>";
 echo "<th>Capsule Status</th>";
 echo "</tr>";

   foreach ($results as $row) {

   echo "<tr id=\"c" . $row['CapsuleNumber'] . "\" " . setclass($row['CapsuleStatus']) . ">";
   echo '<td>' . $row['CapsuleNumber'] . '</td><td>' . $row['CapsuleStatus'] . '</td>';
   echo '<tr>';

 }

 echo "</table>";
 echo "<span>What would you like to set?</span>";
 echo 'Set Capsule Status:<br>
<select id="capStat">
<option value="a">Available</option>
<option value="m">Maintenance</option>
<option value="c">Cleaning</option>
</select><br>';
echo '<div id="formHide">';
 echo '<form>
  <input type="checkbox" id="TVRepair" value="1">TV Problem<br>
  <input type="checkbox" id="LightRepair" value="1" >Light Problem<br>
  <input type="checkbox" id="ConsoleRepair" value="1">Center Console Problem<br>
  <input type="checkbox" id="BodyRepair" value="1">Body Problem<br>
  </form>';

echo '<textarea id="details" rows="4" cols="50" maxlength="100">Dispatch details here...100 char limit</textarea>';
echo '</div>';
echo '<a class="choiceButton" id="updateCapsule">Update Capsule</a>';

   }


catch(PDOException $e)
   {
   echo "Connection failed: " . $e->getMessage();
   }


  $conn = null;
?>
