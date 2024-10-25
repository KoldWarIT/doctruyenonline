
// Lưu trữ nội dung HTML ban đầu khi trang được tải
const initialHTML = document.getElementById('content').innerHTML;

// Hàm kiểm tra và khôi phục nội dung nếu có thay đổi
function checkAndRestoreContent() {
    const contentElement = document.getElementById('content');
    if (contentElement.innerHTML !== initialHTML) {
        console.warn('Phát hiện thay đổi! Đang khôi phục nội dung...');
        contentElement.innerHTML = initialHTML;
    }
}

// Thiết lập kiểm tra định kỳ mỗi 2 giây (2000ms)
setInterval(checkAndRestoreContent, 2000);
