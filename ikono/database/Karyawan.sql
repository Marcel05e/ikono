use tugas;

delete from order_detail where code <> '';
delete from `order` where code <> '';
delete from item where code <> '';

insert into item(code, name, quantity, price) values('MA001', 'pisang', 10, 4000);
insert into item(code, name, quantity, price) values('MA002', 'singkong', 12, 5000);

insert into `order`(code, note) values('TA00000001', 'penjualan pertama');

insert into order_detail(code, line, itemcode, name, quantity, price) 
values('TA00000001', 1, 'MA001', 'pisang', 2, 4000);
insert into order_detail(code, line, itemcode, name, quantity, price) 
values('TA00000001', 2, 'MA002', 'singkong', 3, 5000);
select t1.code, t1.date, t1.note, t2.line, t2.itemcode, t2.name ,t2.quantity, t2.price, 
(t2.quantity * t2.price) linetotalitem
from `order`t1, order_detail t2 where t1.code = t2.code;







use karyawan;

create table master_data_karyawan (
ID_Karyawan VARCHAR(10) PRIMARY KEY,
    Nama VARCHAR(100) NOT NULL,
    Tanggal_Lahir DATE NOT NULL,
    Jenis_Kelamin ENUM('Laki-laki', 'Perempuan') NOT NULL,
    Jabatan VARCHAR(50) NOT NULL,
    Tanggal_Masuk DATE NOT NULL,
    Gaji DECIMAL(15, 2) NOT NULL
);
select * from master_data_karyawan;
insert into master_data_karyawan(ID_Karyawan, Nama, Tanggal_Lahir, Jenis_Kelamin, Jabatan, Tanggal_Masuk, Gaji)
VALUES ('1', 'faiz ekahadi', '2006-01-11-', 'laki-laki', 'bos gede', '2015-06-01', 10000);
insert into master_data_karyawan(ID_Karyawan, Nama, Tanggal_Lahir, Jenis_Kelamin, Jabatan, Tanggal_Masuk, Gaji)
VALUES ('2', 'Marcel', '2006-01-11-', 'laki-laki', 'HRD', '2014-06-01', 20000);
