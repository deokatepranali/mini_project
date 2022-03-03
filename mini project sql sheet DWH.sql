create database mini_project_ETL2
use mini_project_ETL2

------------------------------------------------------------------------
--staging to DWH

--1] data structure validation
     sp_help DWH_Order


--2] count validation

select count(*)as count_DWH_Order from DWH_Order


--3] duplicate validation
select WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,wtyParts,
lbrHrs,PartsCost,Payment,Wait,LbrRate,LbrCost,LbrFee,PartsFee,TotalCost,TotalFee,ReqDay,WorkDay,count(*)as duplicate_record from DWH_Order
group by
WO,District,LeadTech,Service,Rush,ReqDate,WorkDate,Techs,WtyLbr,wtyParts,
lbrHrs,PartsCost,Payment,Wait,LbrRate,LbrCost,LbrFee,PartsFee,TotalCost,TotalFee,ReqDay,WorkDay
having count(*)>1


--4] data validation

select top 100* from DWH_Order;



