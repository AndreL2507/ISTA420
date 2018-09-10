.headers on

-- Name: AndreLacquement
-- File: Lab6.sql
-- Date: 4 September, 2018

Use TSQLV4; 

--1 
select custid, empid, orderdate from sales.orders
where orderdate >= '2016-01-01' and orderdate < '2016-02-01'
   except 
 select custid, empid, orderdate from sales.orders
where orderdate >= '2016-02-01' and orderdate < '2016-03-01';

--2
select custid, empid from sales.orders
where orderdate >= '2016-01-01' and orderdate < '2016-02-01'
   intersect
 select custid, empid from sales.orders
where orderdate >= '2016-02-01' and orderdate < '2016-03-01';

--3
select custid, empid from sales.orders
where orderdate >= '2016-01-01' and orderdate < '2016-02-01'
   intersect
 select custid, empid from sales.orders
where orderdate >= '2016-02-01' and orderdate < '2016-03-01'
 except 
select custid, empid from sales.orders
where orderdate >= '2015-01-01' and orderdate < '2016-01-01';
