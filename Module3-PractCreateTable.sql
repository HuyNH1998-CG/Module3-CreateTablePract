create database QuanLyDiemThi;
use QuanLyDiemThi;
create table hocsinh(
MaHS nvarchar(45) primary key,
tenhs nvarchar(50),
ngaysinh datetime,
lop nvarchar(45),
gt nvarchar(45)
);
create table monhoc(
maMH nvarchar(20) primary key,
tenmh nvarchar(50)
);
create table bangdiem(
maHS nvarchar(45),
maMH nvarchar(20),
diemthi int,
ngaykt datetime,
primary key(maHS,maMH),
foreign key (maHS) references hocsinh(maHS),
foreign key (MaMH) references monhoc(maMH)
);
create table giaovien(
magv nvarchar(45) primary key,
tengv nvarchar(45),
sdt nvarchar(10)
);
alter table monhoc add magv nvarchar(45);
alter table monhoc add constraint fk_magv foreign key (magv) references giaovien(magv);

insert into hocsinh value ("HS02", "Tuan","1999-05-06","lop a","nam");