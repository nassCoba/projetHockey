$(document).ready(function(){
	$('#btnValide').click(function(){
		var zoneArret = $('input[name="zoneArret"]:checked').val();
		var zoneTir = $('input[name="zoneTir"]:checked').val();
		var checkBut = $('input[name="but"]:checked').val();
		var but = 'non';
		if(checkBut){
			but = 'oui';
		}
		console.log(zoneTir + " "+ zoneArret + " " +but);
		$.ajax({
			type: 'post',
			url: 'SaisieServlet',
			data: {"zoneArret":zoneArret ,"zoneTir": zoneTir, "but": but},
			success :function(result){
				$( "div.success" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
			},
			error: function(error){
				$( "div.failure" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
			}
		});
	});
})