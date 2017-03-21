<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
	$(document).ready(function() {
		/*Initialize DataTables*/
		$("#list-category").DataTable();
		
		var dataTable = $('#list-category').DataTable();
		
		/* ----Draw rows datatable---- */
		$.ajax({
			type        : 'GET',
			url         : 'http://localhost:8080/category',
			dataType    : 'json',
			contentType : false,
			
			success     : function(e) {
				$.each(e.result, function(category) {
					dataTable.row.add([
						e.result[category].cd,
						e.result[category].name,
						e.result[category].description,
						'<a href="category-detail.jsp?categoryCode='+ e.result[category].cd +'"><span class="glyphicon glyphicon-th-list"></span></a>',
						'<a href="update-category.jsp?categoryCode='+ e.result[category].cd +'"><span class="glyphicon glyphicon-pencil"></span></a>',
						'<a href="#" id="open-confirm-delete-dialog" data-id='+ e.result[category].cd +' data-toggle="modal" data-target="#confirm-delete-modal"><span class="glyphicon glyphicon-remove"></span></a>'
					]).draw(true);
				});
			},
			
			error        : function(e) {
				alert('Không thể nhận data');
			}
		});
		/* ----/Draw rows datatable---- */
		
		/* ----Click delete link to pass category code to modal---- */
		$(document).on("click", "#open-confirm-delete-dialog", function() {
			var categoryCode = $(this).data('id');
			$('#accept-delete').val(categoryCode);
		});
		/* ----/Click delete link to pass category code to modal---- */
		
		/* ----Start delete---- */
		$('#accept-delete').click(function(e) {
			var categoryCode = $(this).val();
			$.ajax({
				type        : 'DELETE',
				url         : 'http://localhost:8080/category?categoryCode='+categoryCode,
				dataType    : 'json',
				contentType : 'application/json',
				
				success : function(e) {
					$('#confirm-delete-modal').modal('hide');
					$('#modal-success .modal-body').append('<p>Xóa thành công danh mục có mã <strong>' + e.result + '</strong><p>');
					$('#modal-success').modal('toggle');
				},
				
				error : function() {
					
				}
			});
		});
		/* ----/Start delete---- */
		
		/* ----Reload location after remove---- */
		$('#close-success').click(function() {
			window.location.href = "list-category.jsp";
		});
		/* ----/Reload location after remove---- */
	});
</script>