create view vw_WorkersWithBranches
as
select
    w.workerID,
    w.firstname,
    w.lastname,
    w.bonus,
    w.branchID,
    b.branchName
from workers as w
left join branches as b
on w.branchID = b.branchID;

