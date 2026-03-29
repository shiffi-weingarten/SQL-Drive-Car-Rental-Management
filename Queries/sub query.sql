--sub query
 select firstName,lastName
 from Workers
 where bonus>
       (select avg(bonus)
	    from Workers)

--group by 1
select b.city as BranchCity, b.branchName as BranchName,
     count(c.carID) as NumberOfCars
from cars as c
join branches as b on c.branchID = b.branchID 
group by b.city,b.branchName
order by b.city,b.branchName;

--group by 2
select branchcity, branchName,
    count (carID) as NumberOfCars
from vw_BranchCarDetails
group by branchcity,branchName
order by branchcity,branchName;