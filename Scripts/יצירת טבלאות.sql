--רכבים
create table Cars(
carID int not null primary key identity,
plate_number varchar(10),
model varchar(30),
years int,
typeID int ,
branchID int
)
--סוגי רכבים
create table typeCar(
typeID int primary key,
typename varchar(30),
color varchar(30),
numSeats int,
priceID int

)

--מחירים
create table Prices( 
priceID int not null primary key,
PriceHour int,
PriceDay int,
PriceWeek int
)

--לקוחות
create table Clients(
clientID int Primary Key identity,
firstName varchar(30),
lastName varchar(30),
phone varchar(10),

)
--עובדים
create table Workers(
workerID  int Primary Key identity,
firstName varchar(30),
lastName varchar(30),
phone varchar(10),
branchID int 
)
--סניפים
create table Branches(
branchID int Primary Key identity,
branchName varchar(30),
city varchar(30),
phone varchar(10)
)
--השכרות
create table Rentals(
rentalID int Primary Key identity,
carID int,
clientID int,
workerID int ,
startDate DATETIME ,
endDate DATETIME ,
finalPrice int,
statusCar varchar(10)
)
--שינויים
ALTER TABLE Clients
ADD age int check(age>=18);

ALTER TABLE Workers
ADD bonus DECIMAL(10, 2) DEFAULT 0;
--הסטורית השכרות
CREATE TABLE RentalsHistory (
    rentalHistoryID INT PRIMARY KEY IDENTITY, -- מזהה ייחודי לרשומת היסטוריה
    carID INT,
    clientID INT,
    workerID INT,
    startDate DATE NOT NULL,
    actualEndDate DATE NOT NULL,
    finalPrice INT,
    rentalStatus VARCHAR(50), -- שם חדש לעמודה, שאינו מילה שמורה
    -- הוספת מפתחות זרים
    CONSTRAINT FK_RentalHistory_Cars FOREIGN KEY (carID) REFERENCES Cars(carID),
    CONSTRAINT FK_RentalHistory_Clients FOREIGN KEY (clientID) REFERENCES Clients(clientID),
    CONSTRAINT FK_RentalHistory_Workers FOREIGN KEY (workerID) REFERENCES Workers(workerID)
);
DROP TABLE RentalsHistory;

-- שינוי סוג נתונים לעמודת finalPrice בטבלת Rentals
ALTER TABLE Rentals
ALTER COLUMN finalPrice DECIMAL(10, 2);
GO

-- שינוי סוג נתונים לעמודת finalPrice בטבלת RentalsHistory
ALTER TABLE RentalsHistory
ALTER COLUMN finalPrice DECIMAL(10, 2);
GO


