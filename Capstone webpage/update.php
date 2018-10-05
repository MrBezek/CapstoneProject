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


		$stmt = $conn->prepare("SELECT * FROM person WHERE PersonID = '$custID';");


	$stmt->execute();
  $results = $stmt->fetchAll();

foreach($results as $row) {
  echo "<span id='custID' class='hidden'>" . $custID . "</span>";

  echo "<p> Enter customer information </p>";

  echo "<form>";
  echo 'First name:<br><input type="text" name="firstname" id="fname" value="'. $row["PersonFirstName"] .'"><br>';
  echo 'Last name:<br><input type="text" name="lastname"  id="lname" value="'. $row["PersonLastName"] .'"><br>';
  $gender = $row["PersonGender"];
  if ( $gender == "m"){
  echo 'Gender:<br><select id="genderselect">
    <option  value="female">female</option>
    <option  value="male" selected="selected">male</option>
    </select><br><br>';
  }else{
    echo 'Gender:<br><select id="genderselect">
      <option  value="female" selected="selected">female</option>
      <option  value="male">male</option>
      </select><br><br>';
  }
  echo 'Length Of Stay:UPDATE THIS EVERY TIME<br>';
  echo 'Previous Value: '. $row['PersonLengthOfStay'] . '<br>';
  echo'<select id="lengthofstay">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          </select><br><br>';

  echo 'Address Infor:<br>';
  echo 'Address 1:<br>
        <input type="text" name="address1" id="address1" value="' . $row["PersonAddressLine1"] . '"><br>';
  echo 'Address 2:<br>
        <input type="text" name="address2" id="address2" value="'. $row["PersonAddressLine2"] .'"><br>';
  echo 'City:<br>
        <input type="text" name="city" placeholder="city" id="city" value="'. $row["PersonAddressCity"] .'"><br>';
  echo 'State:UPDATE THIS EVERY TIME<br>';
  echo 'Previous Value: '. $row['PersonState'] . '<br>';
  echo '
<select id="state1">
<option value="alabama">AL</option>
<option value="alaska">AK</option>
<option value="arizona">AZ</option>
<option value="arkansas">AR</option>
<option value="california">CA</option>
<option value="colorado">CO</option>
<option value="conneticut">CT</option>
<option value="delaware">DE</option>
<option value="florida">FL</option>
<option value="georgia">GA</option>
<option value="hawaii">HI</option>
<option value="idaho">ID</option>
<option value="illinois">IL</option>
<option value="indiana">IN</option>
<option value="iowa">IA</option>
<option value="kansas">KS</option>
<option value="kentucky">KY</option>
<option value="louisiana">LA</option>
<option value="maine">ME</option>
<option value="maryland">MD</option>
<option value="massachusetts">MA</option>
<option value="michigan">MI</option>
<option value="minnesota">MN</option>
<option value="mississippi">MS</option>
<option value="missouri">MO</option>
<option value="montana">MT</option>
<option value="nebraska">NE</option>
<option value="nevada">NV</option>
<option value="newHampshire">NH</option>
<option value="newJersey">NJ</option>
<option value="newMexico">NM</option>
<option value="newYork">NY</option>
<option value="northCarolina">NC</option>
<option value="northDakota">ND</option>
<option value="ohio">OH</option>
<option value="oklahoma">OK</option>
<option value="oregon">OR</option>
<option value="pennsylvania">PA</option>
<option value="rhodeIsland">RI</option>
<option value="southCarolina">SC</option>
<option value="southDakota">SD</option>
<option value="tennessee">TN</option>
<option value="texas">TX</option>
<option value="utah">UT</option>
<option value="vermont">VT</option>
<option value="virginia">VA</option>
<option value="washington">WA</option>
<option value="westVirginia">WV</option>
<option value="wisconsin">WI</option>
<option value="wyoming">WY</option>
</select><br><br>';
  echo 'Zip Code:<br>
<input type="text" name="zipCode" placeholder="zip" id="zip1" value="'. $row["PersonZipCode"] .'"><br><br>';
}


$stmt = $conn->prepare("SELECT * FROM billing WHERE Person_PersonID = '$custID';");


$stmt->execute();
$results = $stmt->fetchAll();

foreach($results as $row) {
  echo 'Credit Card Info:<br>
      <br>
      Credit Card Number:<br>
  <input type="text" name="creditcardnumber" id="ccnumber" value="'. $row["BillingCCNumber"] .'"><br>';
  echo 'Credit Card Expiration Date:UPDATE THIS EVERY TIME<br>';
  echo 'Previous Values: '. $row['BillingCCexpmonth'] . '/'. $row['BillingCCexpyear'] .'<br>';
  echo '<select id= "ccexpmonth">
    <option value="01">01</option>
    <option value="02">02</option>
    <option value="03">03</option>
    <option value="04">04</option>
    <option value="05">05</option>
    <option value="06">06</option>
    <option value="07">07</option>
    <option value="08">08</option>
    <option value="09">09</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
  </select> / <select id="ccexpyear">
    <option value="16">16</option>
    <option value="17">17</option>
    <option value="18">18</option>
    <option value="19">19</option>
    <option value="20">20</option>
    <option value="21">21</option>
    <option value="22">22</option>
    <option value="23">23</option>
    <option value="24">24</option>
    <option value="25">25</option>
    <option value="26">26</option>
    <option value="27">27</option>
    <option value="28">28</option>
    <option value="29">29</option>
    <option value="30">30</option>
    <option value="31">31</option>
  </select><br>';
  echo 'Credit Card Security Code:<br>
<input type="text" name="creditcardsecurity" id="ccsecuritycode" value="'. $row['BillingCCSecurity'] .'"><br>';
  echo '	Name on card:<br>
<input type="text" name="creditcardname" id="ccnameoncard"  value="'. $row['BillingCCName'] .'"><br><br>';


  echo "</form>";
  echo '<button id="nextbutton" class="submitButton" type="button">Next</button>';


}
  //End Try
  }



catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }


   $conn = null;
?>
