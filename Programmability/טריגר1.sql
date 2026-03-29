-- בדוק אם הטריגר כבר קיים, ואם כן, מחק אותו כדי שנוכל ליצור מחדש/לעדכן
IF OBJECT_ID('trg_Rentals_PreventOverlapInsert', 'TR') IS NOT NULL
    DROP TRIGGER trg_Rentals_PreventOverlapInsert;
GO

CREATE TRIGGER trg_Rentals_PreventOverlapInsert
ON [פרויקט גמר].dbo.Rentals
INSTEAD OF INSERT -- הטריגר יופעל במקום פעולת ה-INSERT המקורית
AS
BEGIN
    SET NOCOUNT ON;

    -- משתנה למזהה הרכב החופף (אם קיים)
    DECLARE @ConflictingCarID INT;

    -- בדיקה האם הרכב/ים המוכנס/ים מושכר/ים כבר בתאריכים חופפים
    -- אם נמצאת חפיפה, נשמור את carID של הרכב החופף
    SELECT TOP 1 @ConflictingCarID = I.carID
    FROM Inserted AS I
    INNER JOIN [פרויקט גמר].dbo.Rentals AS R ON I.carID = R.carID
    WHERE R.statusCar = 'Rented' -- בודקים רק השכרות פעילות
      AND I.startDate < R.endDate -- התחלת ההשכרה החדשה לפני סיום ההשכרה הקיימת
      AND I.endDate > R.startDate; -- סיום ההשכרה החדשה אחרי התחלת ההשכרה הקיימת

    -- אם @ConflictingCarID קיבל ערך (כלומר, נמצאה חפיפה)
    IF @ConflictingCarID IS NOT NULL
    BEGIN
        -- העלה שגיאה ומנע את ההכנסה
        RAISERROR('שגיאה: הרכב (ID: %d) אינו פנוי בתאריכים המבוקשים. הוא כבר מושכר.', 16, 1, @ConflictingCarID);
        RETURN; -- צא מהטריגר
    END
    ELSE
    BEGIN
        -- אם אין חפיפה, בצע את ה-INSERT בפועל לטבלה Rentals
        -- **שינוי קריטי כאן:** העמודה 'actualReturnDate' הוסרה מרשימת העמודות
        -- מכיוון שהיא אינה מסופקת בעת יצירת השכרה חדשה. היא NULL בשלב זה.
        INSERT INTO [פרויקט גמר].dbo.Rentals
        (carID, clientID, workerID, startDate, endDate, finalPrice, statusCar)
        SELECT
            carID,
            clientID,
            workerID,
            startDate,
            endDate,
            finalPrice,
            statusCar
        FROM Inserted;
    END;
END;
GO
