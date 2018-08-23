.echo ON
.headers ON

--Name: Andre Lacquement
--File: Exercise3.sql
--Date: 21 August, 2018

--1
select orderid, productid, unitprice, quantity, (unitprice * quantity) as LineTotal, 
round(((unitprice * quantity) * 100) / (select sum(unitprice * quantity) from order_details group by orderid),2) as Pct 
from order_details limit 25;

--2a
 select distinct c.city, c.region, c.postalcode, 
 e.city, e.region, e.postalcode from customers c 
 join employees e on c.city = e.city;
--2b
select distinct c.city, c.region, c.postalcode, e.city, e.region, e.postalcode 
from customers c 
left outer join employees e on c.city = e.city;
--2c
select distinct c.city, c.region, c.postalcode, e.city, e.region, e.postalcode 
from employees e
left outer join customers c on c.city = e.city;
--3
select productid, productname, (quantityperunit / unitprice) 
as Priceperunit from products 
order by Priceperunit desc limit 10;

--4
select employeeid, orderdate from orders 
where orderdate <= julianday('now') 
group by employeeid;

--5
select orderid, productid, unitprice, quantity, (unitprice * quantity) as LineTotal, 
round(((unitprice * quantity) * 100) / (select sum(unitprice * quantity) from order_details group by orderid),2) as Pct 
from order_details limit 25;