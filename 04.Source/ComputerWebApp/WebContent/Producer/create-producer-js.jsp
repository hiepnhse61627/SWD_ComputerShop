<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
	$(document).ready(function() {
		/* ----Submit Form---- */
		$('#add-producer-form').submit(function(e) {
			e.preventDefault(e);
			var formData = new FormData(this);
			$.ajax({
				type : 'POST',
				url  : 'http://localhost:8080/producer',
				enctype : 'application/x-www-form-urlencoded',
				processData : false,
				contentType : false,
				data        : formData,
				
				success     : function(e) {
					$('#modal-success .modal-body').empty();
					$('#modal-success .modal-body').append('<p>Thêm nhà cung cấp thành công<p>');
					$('#modal-success').modal('toggle');
					$('#add-producer-form')[0].reset();
				},
				
				error       : function() {
					alert('Thất bại');
				}
			});
		});
		/* ----/Submit Form---- */
	});
</script>