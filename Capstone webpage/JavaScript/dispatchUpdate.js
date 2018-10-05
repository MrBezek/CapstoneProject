$( document ).ready(function() {
getcapsules();
});

function getcapsules(senddata) {
	var jqxhr = $.ajax({
			url:"DispatchUpdateSelect.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(data) {
	    $("#main").html(data);
      $("tr").click(function(){dispatchSelect($(this).attr("id"))})
	  })
	  .fail(function() {
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
}


function dispatchSelect(senddata) {
	var jqxhr = $.ajax({
			url:"dispatchCapsules.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(data) {
	    $("#main").html(data);
      $("#updateCapsule").click(function(){startUpdateCapsule()})
	  })
	  .fail(function() {
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
}

function startUpdateCapsule(){
  var capsuleStatus= $('#capStat').val(),
  tvRepair = document.getElementById("TVRepair").checked,
  lightRepair = document.getElementById("LightRepair").checked,
  consoleRepair = document.getElementById("ConsoleRepair").checked,
  Bodyrepair = document.getElementById("BodyRepair").checked,
  details, capID=$('#capsuleidpass').html();

  if (tvRepair == true){
    tvRepair = 1;
  } else {
    tvRepair = 0;
  }
  if (lightRepair == true){
    lightRepair = 1;
  } else {
    lightRepair = 0;
  }
  if (consoleRepair == true){
    consoleRepair = 1;
  } else {
    consoleRepair = 0;
  }
  if (Bodyrepair == true){
    Bodyrepair = 1;
  } else {
    Bodyrepair = 0;
  }
  details = $('#details').val();

  sendUpdateCapsule({capStat:capsuleStatus, tvR:tvRepair, lR:lightRepair,
    cR:consoleRepair, bR:Bodyrepair, details:details, capsuleID:capID});
}

function sendUpdateCapsule(senddata) {
	var jqxhr = $.ajax({
			url:"dispatchUpdateCapsule.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(data) {
	    $("#main").html(data);
	  })
	  .fail(function() {
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
}
