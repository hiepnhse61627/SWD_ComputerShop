<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	$(document).ready(function() {
		/* ----get parameter from jsp uri*/
		var categoryCode = '<%= request.getParameter("categoryCode") %>';
		
		/* ----call rest api to get data input to form---- */
		$.ajax({
			type        : 'GET',
			url         : 'http://localhost:8080/category-detail?categoryCode=' + categoryCode,
			dataType    : 'json',
			contentType :  false,
			
			success     :  function(e) {
				$('#cd').val(e.result.cd);
				$('#name').val(e.result.name);
				$('#description').val(e.result.description);
			},
			
			error       :  function(e) {
				alert('Thất bại');	
			}
		});
		/* ----/call rest api to get data input to form---- */
		
		/* ----Submit form---- */
		$('#add-category-form').submit(function(e) {
			e.preventDefault();
			var formData = new FormData(this);
			$.ajax({
				type        : 'POST',
				url         : 'http://localhost:8080/category-update',
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
			window.location.href = 'list-category.jsp';
		});
		/* ----/Go back----*/
		
		/* ----Start update---- */
		$('#btnSave').click(function(e) {
			$('#add-category-form').submit();
		});
		/* ----/Start update----*/
	});
</script>