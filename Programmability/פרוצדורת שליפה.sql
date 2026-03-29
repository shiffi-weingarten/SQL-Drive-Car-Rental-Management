alter procedure usp_gettopworker
    @numberOfTopWorkers int = 3, -- פרמטר: כמה עובדים מובילים לשלוף (ברירת מחדל: 3)
    @branchID int = null         -- פרמטר אופציונלי: סינון לפי מזהה סניף
as
begin
    set nocount on; -- מונע הצגת הודעות על מספר השורות שהושפעו

    -- ולידציה בסיסית עבור @numberOfTopWorkers
    if @numberOfTopWorkers <= 0
    begin
        raiserror('מספר העובדים המובילים חייב להיות גדול מ-0.', 16, 1);
        return;
    end;

    -- שליפת העובדים עם הבונוס הגבוה ביותר, לפי הפרמטרים שסופקו
    select top (@numberOfTopWorkers) -- בחר את מספר השורות העליונות שהוגדרו בפרמטר
        wv.workerID,
        wv.firstname as workerFirstName,
        wv.lastname as workerLastName,
        wv.bonus as totalBonus, -- שם העמודה הנכון ב-VIEW
        wv.branchName as branchName -- שם העמודה הנכון ב-VIEW
    from [פרויקט גמר].dbo.vw_WorkersWithBranches as wv -- תוקן: הוספת שם מסד הנתונים והסכימה
    where wv.bonus is not null
      and (@branchID is null or wv.branchID = @branchID)
    order by wv.bonus desc;

end;
go
