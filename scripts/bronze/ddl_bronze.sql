/*
================================
DDL Script: Create Bronze Tables
================================
Script Purpose:
  This script creates  tables in the bronze schema, dropping existig tables if they already exist.
  Run this script to re-define the DDL structure of bronze tables
=================================
*/
if object_id ('bronze.crm_cust_info', 'U') is not null
	drop table bronze.crm_cust_info;
create table bronze.crm_cust_info (
cst_id INT,
cst_key nvarchar (50),
cst_firstname nvarchar (50),
cst_lastname nvarchar (50),
cst_material_status nvarchar (50),
cst_gndr nvarchar (50),
cst_create_date date
);

create table bronze.crm_prd_info (
prd_id INT,
prd_key NVARCHAR (50),
prd_nm NVARCHAR (50)  ,
prd_cost INT,
prd_line NVARCHAR (50),
prd_start_dt date,
prd_end_dt date
);

create table bronze.crm_sales_details (
sls_ord_num NVARCHAR (50),
sls_prd_key NVARCHAR (50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT

);


create table bronze.erp_CUST_AZ12 (
CID NVARCHAR (50),
BDATE date,
GEN NVARCHAR (50)
);

create table bronze.erp_LOC_A101 (
CID NVARCHAR (50),
CNTRY NVARCHAR (50)
);

create table bronze.erp_PX_CAT_G1V2 (
ID nvarchar (50),
CAT NVARCHAR (50),
SUBCAT NVARCHAR (50),
MAINTENANCE NVARCHAR (50)
);


