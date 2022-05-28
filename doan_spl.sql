-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 21, 2020 lúc 10:11 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `app_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddh` int(11) DEFAULT NULL,
  `idsp` int(11) DEFAULT NULL,
  `tensp` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhsp` varchar(1000) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `giatien` varchar(110) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddh`, `idsp`, `tensp`, `hinhsp`, `soluong`, `giatien`) VALUES
(8, 1, 'Samsung Galaxy S20 Ultra', 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/8/8/637008702547566121_SS-note-10-pl-glow-1-1.png', 1, '29900000'),
(8, 2, 'iPhone 8 plus 512GB', 'https://cdn.fptshop.com.vn/Uploads/Thumbs/2019/5/30/636948128206495550_iphone-8-plus.png', 1, '40000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `iddh` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `tenkh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` int(12) DEFAULT NULL,
  `diachi` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thoigian` date NOT NULL,
  `tongtien` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`iddh`, `iduser`, `tenkh`, `sdt`, `diachi`, `thoigian`, `tongtien`) VALUES
(8, 1, 'Lê Hoàng Long', 915648789, 'Q. Hải Châu, TP Đà Nẵng', '2020-07-19', '69,900,000đ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `idlsp` int(11) NOT NULL,
  `tenlsp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhlsp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`idlsp`, `tenlsp`, `hinhlsp`) VALUES
(1, 'Dien Thoai', 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/8/8/637008702547566121_SS-note-10-pl-glow-1-1.png'),
(2, 'Laptop', 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/11/27/637104680819384636_msi-alpha-15-den-1.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(50) DEFAULT NULL,
  `giatien` int(20) DEFAULT NULL,
  `hinhsp` varchar(1000) DEFAULT NULL,
  `mota` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idlsp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `giatien`, `hinhsp`, `mota`, `idlsp`) VALUES
(1, 'Samsung Galaxy S20 Ultra ', 29900000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/8/8/637008702547566121_SS-note-10-pl-glow-1-1.png\r\n', 'Man hinh : 6.9 inchs, 2K+, 2K+ (1440 x 3200 Pixels)\r\n', 1),
(2, 'iPhone 8 plus 512GB', 40000000, 'https://cdn.fptshop.com.vn/Uploads/Thumbs/2019/5/30/636948128206495550_iphone-8-plus.png', 'Man hinh: 5.5 inches, Retina HD display, 1080 x 1920 Pixels\r\n', 1),
(3, 'Huawei P30 Pro', 14000000, 'https://cdn.fptshop.com.vn/Uploads/Thumbs/2020/3/11/637195230484860244_huawei-7i-hong-dd.png', 'Man hinh : 6.47 inches, FHD+,2340 x 1080 Pixel\r\nCamera truoc :	32.0Mp\r\nRAM: 8 GB', 1),
(4, 'Asus Vivobook A512FL-EJ251T/i5-8265U', 15450000, 'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/cdn.fptshop.com.vn/Uploads/Originals/2019/10/25/637076180082542664_asus-vivobook-d409-bac-dd.png', 'Man Hinh : 15.6 inch LED', 2),
(5, 'HP 14-ce3018TU / i5-1035G1', 15500000, 'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/cdn.fptshop.com.vn/Uploads/Originals/2019/7/22/636993821153561610_hp-envy-13-aq0027tu-dd.png', 'Man Hinh : 14.0 inch', 2),
(6, 'Samsung Galaxy S20', 21450000, 'https://cdn.fptshop.com.vn/Uploads/Thumbs/2020/2/12/637170944168255808_ss-s20-plus-xanh-dd.png', 'Man hinh : 6.9 inchs, 2K+, 2K+ (1440 x 3200 Pixels)\r\n', 1),
(7, 'OPPO Reno2 F', 8000000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/10/10/637063038223413617_oppo-reno2-f-trang-1-1.png', 'Man hinh : 6.9 inchs, 2K+, 2K+ (1440 x 3200 Pixels)', 1),
(8, 'Samsung Galaxy S20 Ultra', 29000000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/2/12/637170935875912528_ss-s20-ultra-den-1.png', 'Man hinh : 6.9 inchs, 2K+, 2K+ (1440 x 3200 Pixels)', 1),
(9, 'Lenovo Legion Y540-15IRH / Core i7 9750H', 25000000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/6/15/636961872447521086_lenovo-legion-y540-1.png', 'Man hinh : 15.6 inchs, 1920 x 1080 Pixels', 2),
(10, 'Dell G3 15 3590 i5 9300H / 8Gb', 24990000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/10/30/637080523487431465_dell-g3-15-3590-den-1.png', 'Man hinh : 15.6 inchs, 1920 x 1080 Pixels', 2),
(11, 'MSI Alpha 15 A3DDK R7 3750H / 8Gb', 30000000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/11/27/637104680819384636_msi-alpha-15-den-1.png', 'Man hinh : 15.6 inchs, 1920 x 1080 Pixels', 2),
(12, 'MSI PS63 8MO-099VN/Core i7', 24990000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/9/10/637037044876151128_msi-ps63-8mo-den-1.png', 'Man hinh :	15.6 inchs, 1920 x 1080 Pixels', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` int(13) NOT NULL,
  `CMND` int(12) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `fullname`, `phonenumber`, `CMND`, `address`) VALUES
(1, 'long', '123', 'Lê Hoàng Long', 915648789, 987452158, 'Q. Hải Châu, TP Đà Nẵng'),
(6, 'hoang', '123', 'Nguyễn Khán Hoàng', 915684236, 102457845, 'Q.Hải Châu , TP Đà Nẵng'),
(13, '123', '546', '879', 45, 123, '864'),
(14, '456', '456', '456', 54, 45, '45'),
(15, '123', '213', '213', 213, 213, '123'),
(16, '213', '213', '213', 213, 123, '213'),
(17, '213', '213', '213', 213, 231, '231');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`iddh`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`idlsp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `iddh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `idlsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
