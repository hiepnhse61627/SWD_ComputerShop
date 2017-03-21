<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
	$(document).ready(function() {
		var i = 0;
		// Get Category data
		$.ajax({
			type : 'GET',
			url  : 'http://localhost:8080/category',
			contentType :  false,
			dataType    : 'json',
			
			success     :  function(e) {
				$.each(e.result, function(category) {
					var contentHeader;
					contentHeader  = '<div class="col-sm-3"><ul class="multi-column-dropdown"><h6>'+ e.result[category].name +'</h6></ul></div';
					$(contentHeader).insertBefore('.dropdown-menu .row .clearfix');
					$('#category-footer .info').append('<li><a href="#">' + e.result[category].name + '</a></li>');
					if (i === 0) {
						$('#myTab').append('<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home">'+ e.result[category].name +'</a></li>');
					} else {
						$('#myTab').append('<li role="presentation"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home">'+ e.result[category].name +'</a></li>');
					}
					i += 1;
				});
			},
			
			error       :  function(e) {
				
			},
		});
		
		// Get Producer data
		$.ajax({
			type : 'GET',
			url  : 'http://localhost:8080/producer',
			contentType :  false,
			dataType    : 'json',
			
			success     :  function(e) {
				$.each(e.result, function(producer) {
					$('<li><a href="#">' + e.result[producer].producerCd +'</a></li>').insertAfter('.multi-column-dropdown h6');
				});
			},
			
			error       :  function(e) {
				
			},
		});
	});
</script>