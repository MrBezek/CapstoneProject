// This function is to validate the form
function formvalidate(){
  var fname = document.forms["formcheckin"]["fname"].value;
   		fnamelength = fname.value.length;
   		lname = document.forms["formcheckin"]["lname"].value;
   		lnamelength = lname.value.length;
   		address1 = document.forms["formcheckin"]["address1"].value;
   		address1length = document.values.length;
   		address2 = document.forms["formcheckin"]["address2"].value;
   		address2length = document.values.length;
   		city = document.forms["formcheckin"]["city"].value;
   		citylength = document.values.length;
   		zip1 = document.forms["formcheckin"]["zip1"].value;
   		zip1 = document.values.length;

  if (fname === null || fname === "") {
      alert("First name must be filled out");
      return false;
  }
  if (fnamelength > 20) {
    alert("First name must be under 45 characters long");
    return false;
  }
  if (!/^[a-zA-Z]*$/g.test(fname)) {
    alert("First name can only contain letters");
    return false;
  }
  if (lname === null || lname === "") {
      alert("Last name must be filled out");
      return false;
  }
  if (lnamelength > 20) {
    alert("Last name must be under 45 characters long");
    return false;
  }
  if (!/^[a-zA-Z]*$/g.test(lname)) {
    alert("Last name can only contain letters");
    return false;
  }
  if (address1 === null || address1 === "") {
      alert("Address line 1 must be filled out");
      return false;
  }

  if ( address1length > 60) {
    alert("Address Line 1 must be under 60 characters long");
    return false;
  }
  if (!/^[0-9a-zA-Z\s]*$/g.test(address1)) {
    alert("Address Line 1 can only contain letters, numbers, and spaces");
    return false;
  }
  if ( address2length > 60) {
    alert("Address Line 2 must be under 60 characters long");
    return false;
  }
  if (!/^[0-9a-zA-Z\s]*$/g.test(address2)) {
    alert("Address Line 2 can only contain letters, numbers, and spaces");
    return false;
  }
  if (city === null || city === "") {
      alert("City must be filled out");
      return false;
  }
  if ( citylength > 60) {
    alert("City must be under 20 characters long");
    return false;
  }
  if (!/^[a-zA-Z\s]*$/g.test(city)) {
    alert("City can only contain letters and spaces");
    return false;
  }
  if (zip1 === null || zip1 === "") {
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

//This function is to send the collected form data to getcheckinform.php
function sendformdata(senddata){
	var jqxhr = $.ajax({
			url:"getcheckinform.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(receivedData) {
			receivedData = JSON.parse(receivedData);
			// console.log(receivedData);
			 getcapsules(receivedData);
	  })
	  .fail(function() {
	    alert( "error" );
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
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
			$("#printbutton").addClass("submitButton");
			$("#receiptTitle").removeClass("hidden");
			$("#checkInTitle").addClass("hidden");
	  })
	  .fail(function() {
	    alert( "error" );
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
	    alert( "error" );
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
}




//Function is paired with reciept()
function startreceipt(capsuleidpass){
	var capsuleidpass,
			capID = capsuleidpass.slice(1),
			custID = $("#custID").html();
			stayLength = $("#lengthofstay").html();

	receipt({cap:capID, id:custID, hours:stayLength});
	}


//Function to store the form data
function storeformdata(){
	var form =[[$('#fname').val(), $('#lname').val(), $('#genderselect').val(),
						$('#lengthofstay').val(), $('#address1').val(), $('#address2').val(),
						 $('#city').val(),  $('#state1').val(),  $('#zip1').val(),
						 $('#ccnumber').val(), $('#ccexpmonth').val(), $('#ccexpyear').val(),
						 $('#ccsecuritycode').val(), $('#ccnameoncard').val(),
						//  $('#address3').val(),
						//  $('#address4').val(), $('#city2').val(), $('#state2').val(), $('#zip2').val()
					 ]];
		// alert(form);
	sendformdata({forminfo:form});
};




	// $( document ).ready(function() {
  // //  	getcapsules({sex:"female"});
  // document.getElementById("nextbutton").onclick = function() {genderselection()};
  // });

	$( document ).ready(function() {
	// // 	getcapsules({sex:"female"});
	document.getElementById("nextbutton").onclick = function() {formvalidate()};
	//
	});
