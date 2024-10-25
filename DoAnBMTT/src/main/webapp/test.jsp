<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="content">
        <h1>Trang web của tôi</h1>
        <p>Đây là nội dung gốc của trang.</p>
    </div>

    <script>
        // Lưu trữ DOM ban đầu của phần tử mà bạn muốn giám sát
        const initialContent = document.querySelector('#content').innerHTML;

        // Tạo một MutationObserver để theo dõi bất kỳ thay đổi nào trong DOM
        const observer = new MutationObserver((mutations) => {
            mutations.forEach((mutation) => {
                if (mutation.type === 'childList' || mutation.type === 'attributes') {
                    console.warn('Phát hiện thay đổi trong DOM! Khôi phục nội dung ban đầu.');
                    // Khôi phục lại nội dung ban đầu
                    document.querySelector('#content').innerHTML = initialContent;
                }
            });
        });

        // Cấu hình để theo dõi các thay đổi trong cây DOM
        const config = {
            attributes: true, // Theo dõi thay đổi thuộc tính
            childList: true, // Theo dõi thêm hoặc xóa các phần tử con
            subtree: true // Theo dõi toàn bộ cây con của phần tử
        };

        // Bắt đầu quan sát phần tử #content
        observer.observe(document.querySelector('#content'), config);

    </script>
</body>
</html>