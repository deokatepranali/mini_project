create database mini_project_ETL1
use mini_project_ETL1


---------------------------------------------------------------------------------
----1] ---------Phase 2 Testing (landing-------staning)

--------------------------------------------------------------------------
--1]order1       source:LND_Order1 and Traget :: Database

select * from STG_Order1;

-----------------------------------------
--1] structure validation
  sp_help STG_order1

--count validation
select count(*)as duplicate_values_Staging from STG_Order1

--duplicate validation 

select WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,WtyParts,
lbrHrs,PartsCost,Payment,Wait,LbrRate,LbrCost,LbrFee,PartsFee,TotalCost,TotalFee,ReqDay,WorkDay ,count(*) as no_duplicate_record 
from STG_Order1 group by 
WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,WtyParts,
lbrHrs,PartsCost,Payment,Wait,LbrRate,LbrCost,LbrFee,PartsFee,TotalCost,TotalFee,ReqDay,WorkDay having count(*)>1;

--data validation 
select top 100* from STG_Order1;


--------------------------------------
----1] ---------Phase 2 Testing (landing-------staning)

--------------------------------------------------------------------------
--1]order1       source:LND_Order1 and Traget :: Database

--1] data structure validation
sp_help STG_Order2;

--count validation 
select count(*)as count_STG_Order2 from STG_Order2;

-- duplicate validation 
select WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,WtyParts,LbrHrs,PartsCost,Payment,Wait,
LbrRate,LbrCost,LbrFee,partsFee,TotalCost,TotalFee,ReqDay,WorkDay,count(*)as no_duplicate_record from STG_Order2 group by  WO,District,
LeadTech,Service,Rush,ReqDate,
WorkDate,Techs,WtyLbr,WtyParts,LbrHrs,PartsCost,Payment,Wait,
LbrRate,LbrCost,LbrFee,partsFee,TotalCost,TotalFee,ReqDay,WorkDay having count(*)>1



--data validation 
select top 100* from STG_Order2;


----------------------------------------------------------------------------------------
----1] ---------Phase 2 Testing (landing-------staning)

--------------------------------------------------------------------------
--1]order1       source:LND_Order1 and Traget :: Database

--1] structure validation
  sp_help STG_Order3


--count validation 
select count(*)as count_STG_Order3 from STG_Order3

--duplication
select WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,WtyParts,
LbrHrs,PartsCost,Payment,Wait,LbrRate,LbrCost,LbrFee,PartsFee,TotalCost,TotalFee,ReqDay,WorkDay, count(*) as duplicate_record 
 from STG_Order3 group by WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,WtyParts,
LbrHrs,PartsCost,Payment,Wait,LbrRate,LbrCost,LbrFee,PartsFee,TotalCost,TotalFee,ReqDay,WorkDay having count(*)>1

--data validation
select Top 100* from STG_Order3


