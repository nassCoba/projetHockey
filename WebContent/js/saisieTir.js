$(document).ready(function(){
	$('#btnValide').click(function(){
		var zoneArret = $('input[name="zoneArret"]:checked').val();
		var zoneTir = $('input[name="zoneTir"]:checked').val();
		var but = $('input[name="but"]').val();
		console.log(zoneTir + " "+ zoneArret + " " +but);
		$.ajax({
			type: 'post',
			url: 'SaisieServlet',
			data: {"zoneArret":zoneArret ,"zoneTir": zoneTir, "but": but},
			success :function(result){
				$('#result').html(result);
			} 
		});
	});
})