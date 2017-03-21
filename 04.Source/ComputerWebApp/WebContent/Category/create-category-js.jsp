<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	$(document).ready(function() {
		/* ----Submit form---- */
		$('#add-category-form').submit(function(e) {
			e.preventDefault();
			var formData = new FormData(this);
			$.ajax({
				type        : 'POST',
				url         : 'http://localhost:8080/category',
				enctype     : 'application/x-www-form-urlencoded',
				processData : false,
				contentType : false,
				data        : formData,
				
				success     : function(e) {
					$('#modal-success .modal-body').empty();
					$('#modal-success .modal-body').append('<p>Tạo danh mục thành công<p>');
					$('#modal-success').modal('toggle');
					$('#add-category-form')[0].reset();
				},
				
				error       : function(e) {
					alert('Thất bại');
				}
			});
		});
		/* ----/Submit form---- */
	});
</script>