# Bài 3: Tách biệt luồng CI/CD đa môi trường (Staging & Production) với GitHub Environments

## Giới thiệu
Thư mục này chứa cấu hình GitHub Actions CI/CD pipeline để triển khai ứng dụng đa môi trường sử dụng `GitHub Environments`, hỗ trợ tách biệt giữa `staging` và `production` với cơ chế phê duyệt thủ công (Required reviewers).

## Các chức năng đã làm
- Cấu hình workflow tự động kích hoạt khi push lên nhánh `develop` (deploy Staging).
- Cấu hình workflow tự động kích hoạt khi push lên nhánh `main` (deploy Production).
- Tích hợp `environment` trong job để áp dụng các quy tắc bảo vệ môi trường.
- Thêm file script `deploy.sh` hỗ trợ giả lập quá trình deploy bằng shell.

## Hướng dẫn sử dụng
1. Tạo 2 environments trên GitHub Repository Settings -> Environments: `staging` và `production`.
2. Bật `Required reviewers` cho môi trường `production` và chọn tài khoản người duyệt.
3. Đẩy code lên nhánh `develop` để chạy luồng `deploy-staging`.
4. Đẩy code lên nhánh `main` để kích hoạt luồng `deploy-prod` (luồng sẽ tạm dừng và chờ phê duyệt thủ công trước khi tiếp tục).


## Ảnh chụp màn hình kết quả thực nghiệm
![Kết quả thực nghiệm](git_verification_result.png)
