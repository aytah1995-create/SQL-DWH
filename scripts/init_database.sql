/*
============
Create  database and schemas
============
Script purpose:
  This script creates a new database named 'datawarehouse' after checking if it already exists. 
If it does exist, it is dropped and recreated. Besides, the script sets up three schemas withing the database: 'bronze', 'silve and 'gold'.

Warning:
Running this script will drop the entire 'datawarehouse' database if it exists. 
All data in the database will be permanently deleted. Proceed with caution
and ensure you have proper backups before running this script.
*/

use master,

--drop and receate the 'DATAwarehouse' database
if exists (select 1 from sys.databases where name='DataWarehouse')
begin
  alter database datawarehouse set single_user with rollback immediate;
  drop database datawarehouse;
end;
go

--create the 'datawarehouse' database
create database datawarehouse;
go

use datawarehouse;
go

--create schemas
create schema bronze;
go

create schema silver;
go

create schema gold;
go
