$(document).ready(function() {
	$('.switch').toggle(function() {
		$('#outer-container-noquery hgroup , #outer-container-noquery p , #outer-container-noquery nav , .number').fadeOut(200);
		$('#outer-container-noquery').addClass('hidesudo').animate({
			width : '0',
			padding : '0'
		});
		$('.switch').text('GA');
	}, function() {
		$('.switch').text('GA');
		$('#outer-container-noquery').animate({
			width : '800px',
			padding : '40px'
		}).removeClass('hidesudo');
		$('#outer-container-noquery hgroup').fadeIn(200, function(){
			$('#outer-container-noquery p').fadeIn(200, function(){
				$('#container nav').fadeIn(200);
				$('.number').fadeIn(200);
			});
		});
	});
});