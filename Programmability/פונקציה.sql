
create function ufn_GetRentalDurationInDays
(
    @startDate datetime,
    @endDate datetime
)
returns int 
as 
begin 
    if @startDate is null or @endDate is null or @startDate > @endDate 
    begin 
        return 0; 
    end;

    return datediff(day, @startDate, @endDate);
end;
go

-- --- דוגמאות לשימוש בפונקציה ---

-- 1. שימוש ישיר בפונקציה:
select [פרויקט גמר].dbo.ufn_GetRentalDurationInDays('2025-07-01 10:00:00', '2025-07-05 14:30:00') as RentalDurationDays;
-- תוצאה צפויה: 4

-- 2. שימוש בפונקציה בתוך שאילתה על טבלת Rentals (כדי לחשב את משך כל השכרה פעילה):
/*
select
    rentalID,
    clientID,
    carID,
    startDate,
    endDate,
    [פרויקט גמר].dbo.ufn_GetRentalDurationInDays(startDate, endDate) as ExpectedRentalDays
from [פרויקט גמר].dbo.rentals
where statuscar = 'Rented';
*/

-- 3. שימוש בפונקציה בתוך שאילתה על טבלת RentalsHistory (לחישוב משך השכרות שהסתיימו בפועל):
/*
select
    rentalID,
    clientID,
    carID,
    startDate,
    actualEndDate,
    [פרויקט גמר].dbo.ufn_GetRentalDurationInDays(startDate, actualEndDate) as ActualRentalDays
from [פרויקט גמר].dbo.rentalshistory;
*/
