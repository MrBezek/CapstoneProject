function getcapsules(senddata) {
	var jqxhr = $.ajax({
			url:"getcapsules.php",
			data: {stuff: senddata},
			type: 'POST'
		})
	  .done(function(data) {


	    $("#main").html(data);
			$("#main").attr("id",'notmain');
			$("#secondmain").attr("id",'main');
			$("#notmain").attr("id",'secondmain');
	  })
	  .fail(function() {
	    console.log( "error" );
	  })
	  .always(function() {
	    console.log("AJAX Complete");
	  });
}

$( document ).ready(function() {
 	getcapsules({sex:"female"});
 	getcapsules({sex:"male"});
});
