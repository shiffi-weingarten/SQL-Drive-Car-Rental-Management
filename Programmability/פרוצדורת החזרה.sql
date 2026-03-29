create procedure usp_returncar
    @rentalID int,     
    @actualReturnDate datetime

as
 begin
    set nocount on; -- מונע הצגת הודעות על מספר השורות שהושפעו

    update rentals
    set
        statuscar = 'Returned'
    where rentalID = @rentalID;

    -- בדיקה כמה שורות עודכנו
    if @@rowcount = 0
    begin
        raiserror('השכרה עם מזהה %d לא נמצאה או לא שונתה. הפעולה בוטלה.', 16, 1, @rentalID);
    end;

   
    insert into rentalshistory (
        carID,
        clientID,
        workerID,
        startDate,
		actualEndDate,
        finalPrice,
        rentalStatus
        
    )
    select
          carID,
          clientID,
          workerID,
          startDate,
		  @actualReturnDate,
          finalPrice,
          statuscar  
         
    from rentals
    where rentalID = @rentalID;

 
    delete from rentals
    where rentalID = @rentalID;

end;
go