
create view vw_BranchCarDetails
as
select
    c.carID,
    c.model,
    c.years,
    c.color,
    c.plate_number,
    b.branchID,
    b.branchname,
    b.city as branchcity,   
    tc.typename as cartypename, 
    p.pricehour,
    p.priceday,
    p.priceweek
from
    cars as c
join
    branches as b on c.branchid = b.branchid 
left join
    typecar as tc on c.typeid = tc.typeid 
left join
    prices as p on tc.priceid = p.priceid; 
go
