# Andre Lacquement
### T-SQL Ch.8b Homework
---

1. update dbo.salestax
set rate = newrate
where state = state;

1. sales /= newsalestax

1. Proprietary updates both data in a table and assigns values at the same time. 

1. Merges data from a source into a target and applies different actions based on conditional logic. Extract, transform, and load(ETL) are functions used to merge data.

1. Merge semantics are based on join semantics. You specify the target table in the Merge clause and source table name in the using clause and you define a merge condition in the ON clause. 
1. INSERT INTO dbo.T1(datacol)
OUTPUT inserted.keycol, inserted.datacol
SELECT lastname
FROM HR.Employees
WHERE country = N'USA';

1. UPDATE dbo.OrderDetails
SET discount += 0.05
OUTPUT
inserted.orderid,
inserted.productid,
deleted.discount AS olddiscount,
inserted.discount AS newdiscount
WHERE productid = 51;

1. DELETE FROM dbo.Orders
OUTPUT
deleted.orderid,
deleted.orderdate,
deleted.empid,
deleted.custid
WHERE orderdate < '20160101';

1. MERGE INTO dbo.Customers AS TGT
USING dbo.CustomersStage AS SRC
ON TGT.custid = SRC.custid
WHEN MATCHED THEN
UPDATE SET
TGT.companyname = SRC.companyname,
TGT.phone = SRC.phone,
TGT.address = SRC.address
WHEN NOT MATCHED THEN

1. Allow you to insert data into a subset of rows 