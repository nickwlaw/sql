select * from product;
select * from product
	where id = 2;
insert into product (code, description, listprice)
	values ('test2','TestBook2.0','54.50');
insert into product
	values ('11','test3','Testbook3.0','57.50');
insert into product (code,description,listprice)
	values ('nickbook','NickBook 2018','47.50');
select * from product
	where listprice < 55;
select * from product
	order by code;
select * from product
	order by listprice;