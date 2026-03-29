CREATE PROCEDURE usp_RentCar
    @carID int,
    @clientID int,
    @workerID int,
    @startDate date, -- תאריך התחלה להשכרה
    @endDate date,    -- תאריך סיום מתוכנן להשכרה
    @rentalDurationType varchar(10) -- 'Day', 'Week', 'Hour' - סוג התמחור
AS
BEGIN
    SET NOCOUNT ON;

    -- הגדרת משתנים פנימיים לפרוצדורה - הועברו לכאן, בתחילת הבלוק
    DECLARE @calculatedPrice int; -- המחיר יחושב ויישמר כ-INT
    DECLARE @bonusAmount int;     -- סכום הבונוס שייתווסף
    DECLARE @carTypeID int;
    DECLARE @pricePerHour int;
    DECLARE @pricePerDay int;
    DECLARE @pricePerWeek int;
    DECLARE @priceID int;

    -- שלב 1: קבלת typeID של הרכב
    SELECT @carTypeID = typeID FROM Cars WHERE carID = @carID;

    -- שלב 2: קבלת priceID של סוג הרכב מטבלת typecar
    SELECT @priceID = priceID FROM TypeCar WHERE typeID = @carTypeID;

    -- שלב 3: שליפת המחירים מטבלת prices
    SELECT
        @pricePerHour = priceHour,
        @pricePerDay = priceDay,
        @pricePerWeek = priceWeek
    FROM Prices
    WHERE priceID = @priceID;

    -- שלב 4: חישוב המחיר הראשוני בהתאם לסוג משך ההשכרה
    SET @calculatedPrice = 0; -- אתחול

    IF @rentalDurationType = 'Day'
    BEGIN
        SET @calculatedPrice = DATEDIFF(day, @startDate, @endDate) * @pricePerDay;
    END
    ELSE IF @rentalDurationType = 'Week'
    BEGIN
        -- חישוב שבועות: מעגלים למעלה (כדי שחלק משבוע ייחשב כשבוע שלם)
        -- ה-7.0 מבטיח חישוב עשרוני לפני הקיטוע ל-INT
        SET @calculatedPrice = CEILING(DATEDIFF(day, @startDate, @endDate) / 7.0) * @pricePerWeek;
    END
    ELSE IF @rentalDurationType = 'Hour'
    BEGIN
        -- חישוב שעות: אם התאריכים הם DATE, נניח שההפרש בשעות הוא כפולות של 24
        -- כפי שצוין, אם נדרש דיוק בשעות, @startDate ו-@endDate צריכים להיות DATETIME.
        SET @calculatedPrice = DATEDIFF(hour, @startDate, @endDate) * @pricePerHour;
    END;

    -- שלב 5: הכנסת רשומת השכרה חדשה לטבלת rentals
    INSERT INTO Rentals (carID, clientID, workerID, startDate, endDate, finalPrice, statusCar)
    VALUES (@carID, @clientID, @workerID, @startDate, @endDate, @calculatedPrice, 'Rented');

    -- שלב 6: עדכון בונוס לעובד המשכיר (בונוס קבוע לדוגמה)
    SET @bonusAmount = 30; -- סכום בונוס קבוע, כ-INT
    UPDATE Workers
    SET bonus = bonus + @bonusAmount
    WHERE workerID = @workerID;

END;
GO