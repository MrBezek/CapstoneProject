function getcapsules(senddata) {
	var jqxhr = $.ajax({
			url:"checkOutCapsuleList.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(data) {
	    $("#main").html(data);
			$("tr").click(function(){checkOutStart($(this).attr("id"))})
	  })
	  .fail(function() {
	  })
	  .always(function() {
	    console.log("AJAX getcapsules Complete");
	  });
}

function checkOutStart(capsuleidpass){
	var capsuleidpass,
				custID = capsuleidpass.split("p").pop();
				capID = capsuleidpass.slice(1);
				capID = capID.substring(0,2);
				capID = capID.replace("p", "");

	checkOut({cap:capID, id:custID});
	}

	function checkOut(senddata) {
		var jqxhr = $.ajax({
				url:"checkOut.php",
				data: {stuff: senddata},
				type: 'POST'
			})
		  .done(function(data) {
		    $("#main").html(data);
				$("#capTitle").removeClass("hidden");
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
