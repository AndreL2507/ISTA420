# Andre Lacquement
### T-SQL Ch.4 Homework
---

1. A subquery is a query within another query. 

1. A self-contained subquery has no dependency on tables from the outer query.

1. A correlated subquery has to pull from tables in the outer query.

1. A scalar subquery is as follows, SELECT orderid, orderdate, empid, custid FROM Sales.Orders WHERE orderid = (SELECT MAX(O.orderid) FROM Sales.Orders AS O);

1. A multivalued subquery is as follows,
** SELECT orderid FROM Sales.Orders WHERE empid IN (SELECT E.empid FROM HR.Employees as E WHERE E.lastname LIKE N'D%')

1. SELECT custid, orderid, orderdate, empid FROM Sales.Orders AS O1
WHERE orderid =
(SELECT MAX(O2.orderid)
FROM Sales.Orders AS O2
WHERE O2.custid = O1.custid);

1. The EXISTS predicate returns rows that evaluate to TRUE and FALSE otherwise. SELECT custid, companyname FROM Sales.Customers as c WHERE country = N'Spain' AND EXISTS (SELECT * FROM Sales.Orders as o WHERE o.custid = c.custid)

1. It will only return values where the expression is FALSE. SELECT custid, companyname
FROM Sales.Customers AS C
WHERE country = N'Spain'
AND NOT EXISTS
(SELECT * FROM Sales.Orders AS O
WHERE O.custid = C.custid);

1. Two values

1. Keep a running sum of aggregates.