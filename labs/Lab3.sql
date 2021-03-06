.echo on
.headers on 

-- Name: Andre Lacquement
-- File: Lab3.sql
-- Date: 21 August, 2018

--1 
 select e.employeeid, e.firstname, e.lastname, o.orderid, o.orderdate from
   employees e join orders o on e.employeeid = o.employeeid
   order by e.employeeid;
   
--2 
select rtrim(r.regiondescription), t.territorydescription from region r join territories t
    on r.regionid = t.regionid order by r.regiondescription;

--3
	select s.supplierid, s.companyname, p.productid, p.productname from suppliers s
    left outer join products p on s.supplierid = p.supplierid order by companyname;
	
--4
	select o.orderid, o.orderdate, p.productname, od.productid, od.quantity, od.unitprice, (od.quantity * od.unitprice) 
	as lineitem from
    orders o join order_details od on o.orderid = od.orderid
    join products p on od.productid = p.productid where o.orderdate = '1998-05-05'
	order by o.orderid;

--6
select c.companyname, c.customerid, s.companyname, s.shipperid, o.orderdate, o.customerid, o.shipperid from customers c join orders o on c.customerid = o.customerid join shippers s
   on s.shipperid = o.shipperid
   where o.orderdate like '1998-05-%';
   
--7
select c.companyname, c.contactname, e.firstname, e.lastname, o.shipcountry 
from orders o join customers c on o.customerid = c.customerid 
join employees e on o.employeeid = e.employeeid
where o.shipcountry like 'France';

--8
   select p.productid, p.productname, o.shipcountry from products p join order_details od
 on p.productid = od.productid join orders o on od.orderid = o.orderid
    where o.shipcountry like 'Germany';