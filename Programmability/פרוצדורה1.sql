
create or alter procedure rentCar
    @carID int,
    @clientID int,
    @workerID int,
    @startDate date,
    @endDate date,
    @rentalDurationType varchar(10)
as
begin
                                    --set nocount on; -- מונע הודעות "X rows affected"

    declare @calculatedPrice decimal(10, 2);
    declare @bonusAmount decimal(10, 2);
    declare @carTypeID int;
    declare @pricePerHour decimal(10, 2);
    declare @pricePerDay decimal(10, 2);
    declare @pricePerWeek decimal(10, 2);
    declare @priceID int;

    -- קבלת typeID של הרכב
    select @carTypeID = typeID from cars where carID = @carID;

    -- קבלת priceID של סוג הרכב
    select @priceID = priceID from typecar where typeID = @carTypeID;

    -- שליפת המחירים מטבלת Prices
    select
        @pricePerHour = priceHour,
        @pricePerDay = priceDay,
        @pricePerWeek = priceWeek
    from prices
    where priceID = @priceID;

    -- חישוב המחיר הראשוני בהתאם לסוג משך ההשכרה
    set @calculatedPrice = 0;

    if @rentalDurationType = 'Day'
    begin
        set @calculatedPrice = datediff(day, @startDate, @endDate) * @pricePerDay;
    end
    else if @rentalDurationType = 'Week'
    begin
        set @calculatedPrice = ceiling(datediff(day, @startDate, @endDate) / 7.0) * @pricePerWeek;
    end
    else if @rentalDurationType = 'Hour'
    begin
        set @calculatedPrice = datediff(hour, @startDate, @endDate) * @pricePerHour;
    end

    -- הכנסת רשומת השכרה חדשה לטבלת Rentals
    insert into rentals (carID, clientID, workerID, startDate, endDate, finalPrice, statusCar)
    values (@carID, @clientID, @workerID, @startDate, @endDate, @calculatedPrice, 'Rented');

    -- עדכון בונוס לעובד המשכיר (בונוס קבוע לדוגמה)
    set @bonusAmount = 25.00;
    update workers
    set bonus = bonus + @bonusAmount
    where workerID = @workerID;

end;
go