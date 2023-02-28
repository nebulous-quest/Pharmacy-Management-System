create database hello1

CREATE TABLE mytable (
  ID int NOT NULL primary key,
  PASSWORD varchar(50) NOT NULL,
  userType varchar(50) NOT NULL
)

drop table mytable
CREATE TABLE company(
ID varchar(50) PRIMARY KEY NOT NULL,
NAME VARCHAR(50) not null,
Address varchar(50)not null,
phone varchar(50) not null
)

INSERT INTO mytable(ID,PASSWORD,userType) VALUES
(1, '50000','admin'),
(2, '60000','Employee'),
(3, '70000','Employee'),
(4, '80000','admin'),
(0,'0','admin')
select * from company
select * from mytable



create table medicine(
ID varchar(50),
ItemCode varchar(50) primary key not null,--barcode
ItemName varchar(50) not null,
ItemType varchar(50) not null,
StockType varchar(50) not null,
Unit varchar(50) not null,
Manufacture varchar(50) not null,
Expiry varchar(50) not null,
Stock varchar(50)
)

insert into medicine (ID,ItemCode,ItemName,ItemType,StockType,Unit,Manufacture,Expiry,Stock) values
('102','SEC12','Seclo','Capsule','Normal','5','2022-1-12','2024-1-12','Available'),
('103','TUF12','Tufnil','Tablet','Normal','10','2022-1-12','2024-1-12','Available'),
('104','DR123','D-Rise','Tablet','Normal','3','2022-1-12','2024-1-12','N/A'),
('105','FEX12','Fexo','Tablet','Normal','5','2022-1-12','2024-1-12','N/A'),
('106','Lith00','Lithium','Capsule','Normal','13','2022-1-12','2023-10-12','N/A'),
('107','Anta02','Antazol','Drop','Normal','95','2022-3-12','2025-10-12','Available'),
('108','Cipro22','Ciprofloxacin','Capsule','Normal','15','2022-1-12','2023-10-12','Available'),
('109','Ana99','Anaesthetic','Drop','Normal','50','2022-1-10','2025-10-12','Available')

select * from medicine

create table stock(
Barcode varchar(50) references medicine(ItemCode)
)
insert into stock(Barcode) values
('HEX12'),
('SEC12'),
('TUF12'),
('FEX12')

--select * from stock
select medicine.ItemCode,medicine.Itemname,medicine.Itemtype,medicine.expiry,medicine.stock from 
medicine join 
stock on medicine.Itemcode=stock.Barcode

create table patient(
PatientID varchar(50) primary key not null,
Name varchar(50) not null,
Phone varchar(50)not null,
SuspicionLevel varchar(50) not null
)


create table bill(
BillID varchar(50) not null,
Barcode varchar(50) not null,
ItemName varchar(50) not null,
Quantity varchar(50) not null,
UnitPrice varchar(50),
Amount varchar(50) not null,
Dates varchar(50)
)

create table bill1(
BillID varchar(50) not null,
Barcode varchar(50) not null,
ItemName varchar(50) not null,
Quantity varchar(50) not null,
UnitPrice varchar(50),
Amount varchar(50) not null,
Dates varchar(50) not null,
Months varchar(50)
)

create table FinalBill(
BillID varchar(30),
TotalAmount varchar(30)
)

create table patient1(
MedicineName varchar(50) primary key not null,
Name varchar(50) not null,
Phone varchar(50)not null,
SuspicionLevel varchar(50) not null
)
select * from bill1
--drop table bill
drop table bill1
--select sum(Amount) from bill1
--select sum(cast(Amount as int)) as 'Total'+'Monthly'+'Sale' from bill1


