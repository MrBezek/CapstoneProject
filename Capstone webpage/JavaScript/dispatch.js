$( document ).ready(function() {
getcapsules();
});

function getcapsules(senddata) {
	var jqxhr = $.ajax({
			url:"dispatchGetCapsules.php",
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

function dispatchSelect(capsuleidpass){
  var capsuleidpass,
				capID = capsuleidpass.slice(1);

        dispatchFinishWork({cap:capID});

}

function dispatchFinishWork(senddata) {
	var jqxhr = $.ajax({
			url:"dispatchFinishedWork.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(data) {
	    $("#main").html(data);
      var capID = $("#capsuleIDpass").html();
      var capClass = $('#c'+capID).attr("class");
      $("#yes").click(function(){startFinishedWork(capID, capClass)});
	  })
	  .fail(function() {
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
}

function startFinishedWork(capID, capClass){
  var capID=capID;
  var capClass=capClass;
  if (capClass == "maint"){
    FinishWork({status:"maint", cap:capID});
  }else if (capClass == "clean"){
    FinishWork({status:"clean", cap:capID});
  }else {
    alert("Something is wrong");
  }

}
function FinishWork(senddata) {
	var jqxhr = $.ajax({
			url:"dispatchCapsuleStatusUpdate.php",
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
