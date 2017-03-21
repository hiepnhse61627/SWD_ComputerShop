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
		
		/* ----Submit form---- */
		$('#add-producer-form').submit(function(e) {
			e.preventDefault();
			var formData = new FormData(this);
			$.ajax({
				type        : 'POST',
				url         : 'http://localhost:8080/producer-update',
				enctype     : 'application/x-www-form-urlencoded',
				processData : false,
				contentType : false,
				data : formData,
				
				success     : function(e) {
					$('#modal-success .modal-body').empty();
					$('#modal-success .modal-body').append('<p>Lưu thành công<p>');
					$('#modal-success').modal('toggle');
				},
				
				error       : function(e) {
					alert('Thất bại');
				}
			});
		});
		/* ----/Submit form---- */
		
		/* ----Go back----*/
		$('#btnBack').click(function(e) {
			window.location.href = 'list-producer.jsp';
		});
		/* ----/Go back----*/
		
		/* ----Start update---- */
		$('#btnSave').click(function(e) {
			$('#add-producer-form').submit();
		});
		/* ----/Start update----*/
	});
</script>