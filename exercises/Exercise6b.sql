

--Name: Andre Lacquement
--File: Exercise6b.sql
--Date: 11 September, 2018

use TSQLV4;


drop table dbo.failedbanks;

create table dbo.failedbanks(
bankname varchar(60),
bankcity varchar(20),
bankstate varchar(5),
bankcert int,
institution varchar(60),
closingdate date,
updatedate date, 
);

select * from dbo.failedbanks;

--1 Bulk Insert
bulk insert dbo.failedbanks from 'C:\Users\Andre\Desktop\ISTA420\Exercises\banklist.csv'
with 
(
     DATAFILETYPE    = 'char',
       FIELDTERMINATOR = ',',
       ROWTERMINATOR   = '\n',
	   FIRSTROW = 2 
	   

    );
--2 All banks that closed in 2008
select bankname, closingdate from dbo.failedbanks where closingdate like  '2008-%-%';

--3 Top 10 states with the most failed banks
select top 10 bankstate, count(bankname) as totalfailed from dbo.failedbanks group by bankstate
order by totalfailed desc; 

--4 Which institution has the most failed banks
select institution, count(institution) as numfailed from dbo.failedbanks group by institution order by numfailed desc

--5 Which year had the most most banks fail
select top 1 year(closingdate) years, count(closingdate) as totalcount from dbo.failedbanks 
where closingdate like '20%%' group by year(closingdate) order by totalcount desc; 








 




