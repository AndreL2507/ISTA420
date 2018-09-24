-- Name: Andre Lacquement
-- File: Exercise6.sql
-- Date: September 10, 2018

use tsqlv4;

--1
 drop table dbo.presidents;

create table dbo.presidents (
lastname varchar(25),
firstname varchar(25),
middlename varchar(25),
datebirth date,
datedeath date,
statebirth varchar(25),
statehome varchar(25),
party varchar(50),
tookoffice date,
leftoffice date, 
assattempt char(5),
asssucc char(5),
religion varchar(30), 
);

select * from dbo.presidents;

--2
bulk insert dbo.presidents from 'C:\Users\Andre\Desktop\ISTA420\Exercises\pres.csv'
with 
(
     DATAFILETYPE    = 'char',
       FIELDTERMINATOR = ',',
       ROWTERMINATOR   = '\n'
    );
--4
	alter table dbo.presidents add pid integer unique not null identity(1,1);
	alter table dbo.presidents add constraint PK_presidents primary key (pid);
	select * from dbo.presidents;

--5
    update dbo.presidents
	set leftoffice = '2017-01-20', assattempt = 'FALSE', asssucc = 'FALSE'
	where lastname = 'Obama';
--6
    insert into dbo.presidents 
	values ('Trump', 'Donald', 'John', '1946-06-14', NULL, 'New York', 
	'New York', 'Republican', '2017-01-20', NULL, NULL, NULL, 'Presbyterian');

--7 
   
   select party,statehome, count(*) countparty 
   from dbo.presidents group by party, statehome 
   order by countparty desc; 

--8 
select lastname, firstname, middlename, tookoffice, leftoffice, datediff( day, tookoffice, leftoffice) 
as numdaysinoffice from dbo.presidents order by numdaysinoffice desc;

--9
select lastname, firstname, middlename, datebirth, tookoffice, datediff(year, datebirth, tookoffice)-1
as Agewhentookoffice from dbo.presidents;
	
--10 
  select party,religion, count(*) countreligion 
   from dbo.presidents group by party, religion
   order by countreligion desc;
