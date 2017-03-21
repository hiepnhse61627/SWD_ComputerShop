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
		
		/* ----Go back----*/
		$('#btnBack').click(function() {
			window.location.href = 'list-category.jsp';
		});
		/* ----/Go back----*/
	});
</script>