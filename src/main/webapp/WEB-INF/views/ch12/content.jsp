<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "card m-2">
	<div class = "card-header">
		ViewName을 객체 이름으로 해석
	</div>
	<div class="card-body">
		<h6>다운로드 파일 목록(<span id="totalFileNum" class="text-danger">0</span>)</h6>
		<div id="fileList"></div>
	</div>
	<script> /* ready event가 끝나면 실행 */
		$(function() {
			$.ajax({
				url: "fileList"
			}).done((data) => {
				//data = {totalFileNum:10, files: ["photo1.jpg", "photo2.jpg",...]}
				$("#totalFileNum").html(data.totalFileNum);
				var ulTag = "<ul>";
				for(var i = 0; i<data.fileList.length; i++) {
					ulTag += "<li>";
					ulTag += "<a href='fileDownload?fileName=" + data.fileList[i] + "'>" + data.fileList[i]+ "</a>"
					ulTag += "</li>";
				}
				ulTag += "</ui>"
				$("#fileList").html(ulTag);
			})
		});
	</script>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>