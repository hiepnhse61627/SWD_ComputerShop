<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
	$(document).ready(function() {
		/* ----Initialize DataTables---- */
		$('#list-producer').DataTable();
		
		var dataTable = $('#list-producer').DataTable();
		
		/* ----Draw rows datatable---- */
		$.ajax({
			type        : 'GET',
			url         : 'http://localhost:8080/producer',
			dataType    : 'json',
			contentType : false,
			
			success     : function(e) {
				$.each(e.result, function(producer) {
					dataTable.row.add([
						e.result[producer].producerCd,
						e.result[producer].producerName,
						e.result[producer].producerDescription,
						e.result[producer].producerEmail,
						e.result[producer].producerAddress,
						e.result[producer].producerPhone,
						'<a href="producer-detail.jsp?producerCode='+ e.result[producer].producerCd +'"><span class="glyphicon glyphicon-th-list"></span></a>',
						'<a href="update-producer.jsp?producerCode='+ e.result[producer].producerCd +'"><span class="glyphicon glyphicon-pencil"></span></a>',
						'<a href="#" id="open-confirm-delete-dialog" data-id='+ e.result[producer].producerCd +' data-toggle="modal" data-target="#confirm-delete-modal"><span class="glyphicon glyphicon-remove"></span></a>'
					]).draw(true);
				});
			},
			
			error       : function() {
				alert('Không thể nhận data');
			}
		});
		/* ----/Draw rows datatable---- */
		
		/* ----Click delete link to pass category code to modal---- */
		$(document).on("click", "#open-confirm-delete-dialog", function() {
			var producerCode = $(this).data('id');
			$('#accept-delete').val(producerCode);
		});
		/* ----/Click delete link to pass category code to modal---- */
		
		/* ----Start delete---- */
		$('#accept-delete').click(function(e) {
			var producerCode = $(this).val();
			$.ajax({
				type        : 'DELETE',
				url         : 'http://localhost:8080/producer?producerCode='+ producerCode,
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
			window.location.href = "list-producer.jsp";
		});
		/* ----/Reload location after remove---- */
	});
</script>