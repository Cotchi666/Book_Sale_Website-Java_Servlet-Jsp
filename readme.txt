Hướng dẫn cách cài đặt (bản rút gọn)

---Thực hiện: Nhóm 2 - K13DCPM01---

-Sau khi tải xong tài nguyên trên github về và giải nén file ra, bạn sẽ có 2 file chính ( mã nguồn 'WEBTL_Re' và file database back up'QLG_v2.trn')

-Bạn mở trình biên dịch code "Eclipse" và import project 'WEBTL_Re' vào.
-Chương trình sửa dụng csdl "SQL Server", bạn cần cài đặt trước để kết nối đến database

*Lưu ý cấu hình lại java jdk cho phù hợp với phiên bản của máy bạn và apache tomcat 9 được sử dụng mặc định trong mã nguồn.
(bằng cách chuột phải chọn "build path", sau đó chọn "config build path", chọn "Library", remove bản "JRE" hiện tại, "server runtime" và add lại cho phù hợp, 
sau đó chọn Project Facets và chọn runtime nhấn tick vào phiên bản apache tomcat vừa thêm và apply )

-Chọn vào file src( nơi chứa các file java), chọn package "context" chọn "DBContext.java", tìm đến dòng 28 và sửa lại instance sao cho phù hợp
 với tên của server name database của bạn, dòng 29, 30 sửa thông tin USERID và PASSWORD đúng với sql server của bạn.
-Sử dụng file 'QLG_v2.trn' để restore lại database trong sql server

*Lưu ý server sql server của bạn chắc chắn rằng phải mở cổng TCP/IP 1433.

(để cấu hình port 1433 bạn tìm kiếm ứng dụng "SQL Server 2019 Configuration Manager" rồi chọn vào "SQL Server Network Configuration", 
chọn Protocols for SQLEXPRESS hoặc chọn Protocols mà bạn đã cấu hình từ trước, sau đó click chuột phải vào TCP/IP chọn enable, 
chọn properties chuyển sang "IP Adressess" kéo xuống dưới cùng mục "IPALL" kiểm tra xem có chỉnh thành 'port 1433' chưa nếu chưa thì cấu hình lại là '1433')

-Sau khi hoàn tất các yêu cầu bạn mở project chọn 'src', chọn package 'control', tìm file 'HomeControl.java' nhấn chuột phải chọn 'run as' và 'run on server'.

---Chúc các bạn thành công---
'