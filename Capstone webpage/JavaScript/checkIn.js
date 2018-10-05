$( document ).ready(function() {
document.getElementById("nextbutton").onclick = function() {formvalidate()};
});

// This function is to validate the form
function formvalidate(){
  var fname = $('#fname').val(),
   		fnamelength = fname.length,
   		lname = $('#lname').val(),
   		lnamelength = lname.length,
   		address1 = $('#address1').val(),
   		address1length = address1.length,
   		address2 = $('#address2').val(),
   		address2length = address2.length,
   		city = $('#city').val(),
   		citylength = city.length,
   		zip1 = $('#zip1').val(),
   		zip1length = zip1.length;

  if (fnamelength > 100) {
    alert("First name must be under 100 characters long");
    return false;
  }
  if (lname == null || lname == "") {
      alert("Last name must be filled out");
      return false;
  }
  if (lnamelength > 100) {
    alert("Last name must be under 100 characters long");
    return false;
  }
  if (address1 == null || address1 == "") {
      alert("Address line 1 must be filled out");
      return false;
  }
  if ( address1length > 100) {
    alert("Address Line 1 must be under 100 characters long");
    return false;
  }
  // if (!/^[0-9a-zA-Z\s]*$/g.test(address1)) {
  //   alert("Address Line 1 can only contain letters, numbers, and spaces");
  //   return false;
  // }
  if ( address2length > 100) {
    alert("Address Line 2 must be under 100 characters long");
    return false;
  }
  // if (!/^[0-9a-zA-Z\s]*$/g.test(address2)) {
  //   alert("Address Line 2 can only contain letters, numbers, and spaces");
  //   return false;
  // }
  if (city == null || city == "") {
      alert("City must be filled out");
      return false;
  }
  if ( citylength > 100) {
    alert("City must be under 100 characters long");
    return false;
  }
  // if (!/^[a-zA-Z\s]*$/g.test(city)) {
  //   alert("City can only contain letters and spaces");
  //   return false;
  // }
  if (zip1 == null || zip1 == "") {
      alert("Zip Code must be filled out");
      return false;
  }
  if ( zip1length > 7) {
    alert("Zip Code must be under 7 characters long");
    return false;
  }
  if (!/^[0-9a-zA-Z\s]*$/g.test(zip1)) {
    alert("Zip code can only contain letters, numbers, and spaces");
    return false;
  }
	else{
		storeformdata();
	}
}


//Function to store the form data
function storeformdata(){
	var form =[[$('#fname').val(), $('#lname').val(), $('#genderselect').val(),
						$('#lengthofstay').val(), $('#address1').val(), $('#address2').val(),
						 $('#city').val(),  $('#state1').val(),  $('#zip1').val(),
						 $('#ccnumber').val(), $('#ccexpmonth').val(), $('#ccexpyear').val(),
						 $('#ccsecuritycode').val(), $('#ccnameoncard').val(),
					 ]];
	sendformdata({forminfo:form});
};

//This function is to send the collected form data to getcheckinform.php
function sendformdata(senddata){
	var jqxhr = $.ajax({
			url:"getcheckinform.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(receivedData) {
			receivedData = JSON.parse(receivedData);
			 getcapsules(receivedData);
	  })
	  .fail(function() {
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
}

//This function is to generate tables with the capsule id and status
function getcapsules(senddata) {
	var jqxhr = $.ajax({
			url:"getcapsuleswithlinks.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(data) {
	    $("#main").html(data);
			$("tr").click(function(){startreceipt($(this).attr("id"))})
	  })
	  .fail(function() {
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
}

//Function is paired with reciept()
function startreceipt(capsuleidpass){
	var capsuleidpass,
			capID = capsuleidpass.slice(1),
      capID = capID.substring(0,2)
      capID = capID.replace("p", "")
			custID = $("#custID").html();
			stayLength = $("#lengthofstay").html();
      capClass = capsuleidpass.split("p").pop();

      if (capClass == "a"){
        receipt({cap:capID, id:custID, hours:stayLength})
      } else {
        alert ("Capsule must be available");
      }

	;
	}

//This function is to send reciept.php the capsule ID
function receipt(senddata){
	var jqxhr = $.ajax({
			url:"receipt.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(data) {
	    $("#main").html(data);
			$("#printbutton").removeClass("hidden");
      $("#capTitle").removeClass("hidden");
			$("#printbutton").addClass("submitButton");
			$("#receiptTitle").removeClass("hidden");
			$("#checkInTitle").addClass("hidden");
	  })
	  .fail(function() {
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
}
