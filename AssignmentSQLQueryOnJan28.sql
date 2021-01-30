use WFA3DotNet
--Q1. Create a table Product 
create table Product1(
			ProductId int not null primary key identity(1,1),
			Description varchar(30) not null unique,
			SetQty int not null check(setqty=1 or setqty=5 or setqty=10) default 1,
			rate decimal(10,2) check(rate>=51 and rate<=5000)
)

--Q2)2.	Insert 20 records in the above Product table
insert into Product1 values('Book',10,56.78)
insert into Product1 values('Pen',5,53.5)
insert into Product1 values('Pencil',1,79.67)
insert into Product1 values('Bag',5,150.78)
insert into Product1 values('Cloth',10,65.56)
insert into Product1 values('bottle',5,56.3)
insert into Product1 values('laptop',1,100.3)
insert into Product1 values('mobile',5,59.38)
insert into Product1 values('watch',10,76.3)
insert into Product1 values('TV',5,567.78)
insert into Product1 values('Bulb',5,156.78)
insert into Product1 values('Radio',10,596.3)
insert into Product1 values('camera',1,556.78)
insert into Product1 values('HeadPhone',10,566.78)
insert into Product1 values('Belt',1,56.78)
insert into Product1 values('Shoes',5,456.78)
insert into Product1 values('Wallet',10,516.78)
insert into Product1 values('Chair',1,86.78)
insert into Product1 values('Tab',5,546.78)
insert into Product1 values('speaker',10,561.78)

select * from Product1

--Q3.Update all the rates with 10% rate hike.
update Product1 
set rate=rate*1.1

--Q4. Delete last record by providing the ProductID
delete from Product1
where ProductId=20

--Q5.Alter the above table and add the following column
alter table Product1
add MarginCode char(1) check(MarginCode='A' or MarginCode='B')

--Q6. Update few records to set MarginCode to A and some records MarginCode to B
update Product1
set MarginCode='A'
where ProductId<8

update Product1
set MarginCode='B'
where ProductId>13

--Q7. Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1.
update Product1
set SetQty =10
where margincode='A' and SetQty=1


