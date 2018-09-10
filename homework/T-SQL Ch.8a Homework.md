# Andre Lacquement
### T-SQL Ch.8a Homework
---

1. The list of columns is optional, but by doing so you control the value-column associations. If you don't specify a value, SQL will use a default value if one was defined. 

1. Yes, you use a subquery in INSERT SELECT statements. 

1. Create Proc EXEC

1. You insert the INTO statement right before the FROM clause of the query 

1. The parameters for the BULK insert statement are the target table, source file, and options.(You can specify many options)

1. No, however you can provide your own explicit values after setting the IDENTITY_INSERT option to ON. 

1. use the CREATE SEQUENCE command. 

1. You use SEQUENCE objects to support other tables.

1. You can alter a sequence with ALTER SEQUENCE.

1. Truncate is minimally logged and has no filter, however truncate is not allowed when the target table is referenced by a foreign key constraint.

1. Drop will remove the entire table whereas delete can be filtered. 