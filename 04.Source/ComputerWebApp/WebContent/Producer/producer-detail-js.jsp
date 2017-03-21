<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	$(document).ready(function() {
		/* ----get parameter from jsp uri*/
		var producerCode = '<%= request.getParameter("producerCode") %>';
		
		/* ----call rest api to get data input to form---- */
		$.ajax({
			type        : 'GET',
			url         : 'http://localhost:8080/producer-detail?producerCode=' + producerCode,
			dataType    : 'json',
			contentType :  false,
			
			success     :  function(e) {
				$('#producerCd').val(e.result.producerCd);
				$('#producerName').val(e.result.producerName);
				$('#producerDescription').val(e.result.producerDescription);
				$('#producerEmail').val(e.result.producerEmail);
				$('#producerAddress').val(e.result.producerAddress);
				$('#producerPhone').val(e.result.producerPhone);
			},
			
			error       :  function(e) {
				alert('Thất bại');	
			}
		});
		/* ----/call rest api to get data input to form---- */
		
		/* ----Go back----*/
		$('#btnBack').click(function() {
			window.location.href = 'list-producer.jsp';
		});
		/* ----/Go back----*/
	});
</script>