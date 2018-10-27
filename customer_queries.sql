select * from customer;

select * from customer
	where state = "ca"
	order by name desc;
    
select name, city, state, sales, active as 'is active?'
	from customer;
    
select * from customer
 where state = 'ca'
   and city = 'fresno'
 order by name desc;