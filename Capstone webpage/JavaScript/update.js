function getcapsules(senddata) {
	var jqxhr = $.ajax({
			url:"checkOutCapsuleList.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(data) {
	    $("#main").html(data);
			$("tr").click(function(){updateStart($(this).attr("id"))})
	  })
	  .fail(function() {
	  })
	  .always(function() {
	    console.log("AJAX getcapsules Complete");
	  });
}

function updateStart(capsuleidpass){
	var capsuleidpass,
				custID = capsuleidpass.split("p").pop();
				capID = capsuleidpass.slice(1);
				capID = capID.substring(0,2);
				capID = capID.replace("p", "");

	updateForm({cap:capID, id:custID});
	}

	function updateForm(senddata) {
		var jqxhr = $.ajax({
				url:"update.php",
				data: {stuff: senddata},
				type: 'POST'
			})
		  .done(function(data) {
		    $("#main").html(data);
        $("#nextbutton").click(function(){storeformdata($(this).attr("id"))})
		  })
		  .fail(function() {
		  })
		  .always(function() {
		    console.log("AJAX checkout Complete");
		  });
	}

  function storeformdata(){
    custID = $("#custID").html();
  	var form =[[$('#fname').val(), $('#lname').val(), $('#genderselect').val(),
  						$('#lengthofstay').val(), $('#address1').val(), $('#address2').val(),
  						 $('#city').val(),  $('#state1').val(),  $('#zip1').val(),
  						 $('#ccnumber').val(), $('#ccexpmonth').val(), $('#ccexpyear').val(),
  						 $('#ccsecuritycode').val(), $('#ccnameoncard').val(),
  					]];

  	updateNow({forminfo:form, id:custID});
  };

  function updateNow(senddata) {
    var jqxhr = $.ajax({
        url:"updateDB.php",
        data: {stuff: senddata},
        type: 'POST'
      })
      .done(function(data) {
        $("#main").html(data);
				$("#printbutton").removeClass("hidden");
				$("#printbutton").addClass("submitButton");
      })
      .fail(function() {
      })
      .always(function() {
        console.log("AJAX checkout Complete");
      });
  }

$( document ).ready(function() {
 	getcapsules();

});
