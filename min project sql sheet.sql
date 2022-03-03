create database mini_project_ETL
use mini_project_ETL
---------------------------------------------------------------------------
---------Phase 1 Testing (source-----landing)

--------------------------------------------------------------------------
--1]order1       source:flat file and Traget :: Database
------------------------------------------------------------------------
select * from LND_Order1;


---1]data structure validation
       sp_help LND_Order1;

--2] count  validation
    select count(*)as conut_validation_Landing from LND_Order1; 

	select * from LND_Order1; 

--duplicate validation


select WO,District,LeadTech,Service,Rush,ReqDate,workDate,Techs,WtyLbr,WtyParts,lbrHrs,PartsCost,
Payment,Wait,LbrRate,LbrCost,LbrFee,PartsFee,TotalCost,TotalFee,ReqDay,WorkDay, count(*)as no_duplicate_record from LND_Order1 
group by  WO,District,LeadTech,Service,Rush,ReqDate,workDate,Techs,WtyLbr,WtyParts,lbrHrs,PartsCost,
Payment,Wait,LbrRate,LbrCost,LbrFee,PartsFee,TotalCost,TotalFee,ReqDay,WorkDay having count(*)>1;




--data validation
select top 100* from LND_Order1
 
---------------------------------------------------------------------------------------------------------------------------------
---------Phase 1 Testing (source-----landing)

--------------------------------------------------------------------------
--2]order2       source:excel file and Traget :: Database

select * from LND_Order2

-------------------------------------------------------------------------------
---1]data structure validation
       sp_help LND_Order2;
	   
--2]count 
 select  count(*)as count_LND_Order2 from LND_Order2



--3]duplicate
   select  WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,WtyParts,LbrHrs,PartsCost,
Payment,Wait,LbrRate,LbrCost,LbrFee,partsFee,TotalCost,TotalFee,ReqDay,WorkDay,count(*) as duplicate_record_LND_Order2 from LND_Order2
group by 
 WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,WtyParts,LbrHrs,PartsCost,
Payment,Wait,LbrRate,LbrCost,LbrFee,partsFee,TotalCost,TotalFee,ReqDay,WorkDay having count(*) >1


--4]data validation 
 select top 100* from LND_Order2
----------------------------------------------------------------------------------

--2]order3       source:excel file and Traget :: Database

select * from LND_Order3

-------------------------------------------------------------------------------
---1]data structure validation
       sp_help LND_Order3;
	  

--2]count 
 select count(*)as count_LND_Order3  from LND_Order3

--3]duplicate
select WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,WtyParts,LbrHrs,
PartsCost,Payment,Wait,LbrRate,LbrCost,LbrFee, PartsFee,TotalCost,TotalFee,ReqDay,WorkDay, count(*) as duplicate_LND_Order3
 from LND_Order3
 group by 
 WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,WtyParts,LbrHrs,
PartsCost,Payment,Wait,LbrRate,LbrCost,LbrFee, PartsFee,TotalCost,TotalFee,ReqDay,WorkDay having count(*)>1


--4]data validation
select top 100* from LND_Order3

----------------------------------------------------------------------------------
--landing to staging 
select count(*)as count_LND_Order2 from LND_Order2

select top 100* from LND_Order2

-------------------------------------------------------------------------------------
--landing to staging 
select count(*) as count_LND_Order3 from LND_Order3

select top 100* from LND_Order3

---------------------------------------------------------------------------
--landing to staging 
select count(*) as count_LND_Order3 from LND_Order3

select top 100* from LND_Order3

-------------------------------------------------------------------------------