--מחירים
insert into Prices(priceID, priceHour, priceDay, priceWeek)
values
(1,30, 100, 500),
(2,30, 150, 700),
(3,50, 200, 1000),
(4,60, 300, 1200),
(5,60, 350, 1500),
(6,70, 500, 2500);
--סניפים
insert into Branches(branchName,city,phone)
values
('JerusalemCenter','Jerusalem',025371811),
('MaaleAdumim','Jerusalem',025371812),
('Commercialcenter','Beit Shemesh',025371813),
('Airport','Lod',025371814),
('TelAvivCenter','TelAviv',025371815),
('TelAvivNorth','TelAviv',025371816),
('CentralStation','Modiin Ilit',025371817),
('citycenter','Haifa',025371818);
-- סוג רכב
insert into typeCar(typeID,typename,numSeats,priceID)
values
(1,'small',4,1),
(2,'small',5,1),
(3,'family',5,2),
(4,'family',6,2),
(5,'family',7,3),
(6,'large',8,4),
(7,'large',9,5),
(8,'Jeep car',5,3),
(9,'Jeep car',6,4),
(10,'Jeep car',8,5),
(11,'van',18,6),
(12,'van',20,6);
--לקוחות
insert into Clients(firstName,lastName,phone,age)
values
('Abraham', 'Weiss', '0501112223', 70),
('Sarah', 'Levi', '0523334445', 65),
('Isaac', 'Stern', '0535556667', 40),
('Rebecca', 'Katz', '0547778889', 38),
('Jacob', 'Gross', '0509990001', 32),
('Leah', 'Klein', '0521012030', 30),
('Joseph', 'Goldstein', '0532023040', 28),
('Rachel', 'Roth', '0544045060', 26),
('Moses', 'Schwartz', '0506067080', 80),
('Miriam', 'Cohen', '0528089010', 75),
('David', 'Rosenberg', '0530102030', 29),
('Ruth', 'Greenberg', '0540405060', 24),
('Solomon', 'Silverman', '0500708090', 55),
('Esther', 'Adler', '0521113335', 27),
('Daniel', 'Berger', '0532224446', 33),
('Hannah', 'Fisher', '0543335557', 41),
('Noah', 'Muller', '0504446668', 68),
('Deborah', 'Schneider', '0525557779', 45),
('Samuel', 'Hoffman', '0536668880', 50),
('Abigail', 'Frankel', '0547779991', 36);

--עובדים
INSERT INTO Workers (firstName, lastName, phone, branchID)
VALUES
('Gideon', 'Silberman', '0502223331', 1),
('Abel', 'Benvenisti', '0524445552', 2),
('Jezebel', 'Perlmutter', '0536667773', 3),
('Nathan', 'Weisman', '0548889994', 4),
('Dinah', 'Rotenberg', '0501110005', 5),
('Samson', 'Landau', '0523034056', 6),
('Naomi', 'Grossman', '0534045061', 1),
('Jonathan', 'Kirshner', '0546067082', 2),
('Esther', 'Lerner', '0508089013', 3),
('Reuben', 'Rosen', '0520201024', 4),
('Miriam', 'Goldman', '0531312135', 5),
('Asher', 'Admon', '0542423246', 6);
--cars
INSERT INTO Cars (plate_number, model, years, typeID, branchID, color)
VALUES
('12-345-67', 'Toyota Corolla', 2020, 1, 1, 'Black'),
('89-012-34', 'Mazda 3', 2021, 2, 2, 'Silver'),
('56-789-01', 'Hyundai Tucson', 2022, 3, 3, 'White'),
('23-456-78', 'Kia Sportage', 2023, 4, 4, 'Gray'),
('90-123-45', 'Skoda Kodiaq', 2021, 5, 5, 'Blue'),
('67-890-12', 'Honda Civic', 2020, 1, 6, 'Red'),
('34-567-89', 'Ford Focus', 2019, 2, 1, 'Green'),
('01-234-56', 'Volkswagen Golf', 2022, 3, 2, 'Black'),
('78-901-23', 'Subaru Forester', 2023, 4, 3, 'White'),
('45-678-90', 'BMW X5', 2024, 5, 4, 'Black'),
('10-101-01', 'Mercedes C-Class', 2022, 1, 5, 'Silver'),
('20-202-02', 'Audi Q3', 2023, 3, 6, 'Gray'),
('30-303-03', 'Citroen C3', 2018, 2, 1, 'Yellow'),
('40-404-04', 'Nissan Qashqai', 2020, 4, 2, 'Blue'),
('50-505-05', 'Hyundai i10', 2021, 1, 3, 'Red'),
('60-606-06', 'Toyota Corolla', 2019, 2, 4, 'White'),
('70-707-07', 'Hyundai Tucson', 2020, 3, 5, 'Black'),
('80-808-08', 'Kia Sportage', 2021, 4, 6, 'Silver'),
('90-909-09', 'Skoda Kodiaq', 2022, 5, 1, 'Red'),
('01-010-10', 'Honda Civic', 2023, 1, 2, 'Green'),
('11-112-23', 'Ford Focus', 2024, 2, 3, 'Blue'),
('22-223-34', 'Volkswagen Golf', 2019, 3, 4, 'White'),
('33-334-45', 'Subaru Forester', 2020, 4, 5, 'Black'),
('44-445-56', 'BMW X5', 2021, 5, 6, 'Silver'),
('55-556-67', 'Mercedes C-Class', 2022, 1, 1, 'Gray'),
('66-667-78', 'Audi Q3', 2023, 3, 2, 'Yellow'),
('77-778-89', 'Citroen C3', 2024, 2, 3, 'Red'),
('88-889-90', 'Nissan Qashqai', 2019, 4, 4, 'Blue'),
('99-990-01', 'Hyundai i10', 2020, 1, 5, 'White'),
('13-579-11', 'Toyota Corolla', 2021, 2, 6, 'Black'),
('24-680-22', 'Hyundai Tucson', 2022, 3, 1, 'Silver'),
('35-791-33', 'Kia Sportage', 2023, 4, 2, 'Green'),
('46-802-44', 'Skoda Kodiaq', 2024, 5, 3, 'Black'),
('57-913-55', 'Honda Civic', 2019, 1, 4, 'Red'),
('68-024-66', 'Ford Focus', 2020, 2, 5, 'White'),
('79-135-77', 'Volkswagen Golf', 2021, 3, 6, 'Blue'),
('80-246-88', 'Subaru Forester', 2022, 4, 1, 'Gray'),
('91-357-99', 'BMW X5', 2023, 5, 2, 'Yellow'),
('02-468-00', 'Mercedes C-Class', 2024, 1, 3, 'Black'),
('13-579-10', 'Audi Q3', 2019, 3, 4, 'Silver'),
('24-680-20', 'Citroen C3', 2020, 2, 5, 'Red'),
('35-791-30', 'Nissan Qashqai', 2021, 4, 6, 'White'),
('46-802-40', 'Hyundai i10', 2022, 1, 1, 'Blue'),
('57-913-50', 'Toyota Corolla', 2023, 2, 2, 'Black'),
('68-024-60', 'Hyundai Tucson', 2024, 3, 3, 'Gray'),
('79-135-70', 'Kia Sportage', 2019, 4, 4, 'Yellow'),
('80-246-80', 'Skoda Kodiaq', 2020, 5, 5, 'Red'),
('91-357-90', 'Honda Civic', 2021, 1, 6, 'Silver'),
('02-468-01', 'Ford Focus', 2022, 2, 1, 'Black'),
('13-579-12', 'Volkswagen Golf', 2023, 3, 2, 'White');
-- השכרות

-- השכרות
-- אם אתה רוצה למחוק נתונים קיימים בטבלה לפני הוספה מחדש:
-- delete from Rentals;
-- go

INSERT INTO Rentals (carID, clientID, workerID, startDate, endDate, finalPrice, statusCar)
VALUES
(201, 1, 1, '2025-06-15', '2025-06-20', 500, 'Rented'),    -- רכב 201, לקוח 1, עובד 1
(205, 2, 3, '2025-06-16', '2025-06-23', 750, 'Rented'),    -- רכב 205, לקוח 2, עובד 3
(210, 3, 5, '2025-06-17', '2025-06-25', 600, 'Rented'),   -- רכב 210, לקוח 3, עובד 5
(215, 4, 7, '2025-06-18', '2025-06-26', 800, 'Rented'),   -- רכב 215, לקוח 4, עובד 7
(220, 5, 9, '2025-06-19', '2025-06-28', 900, 'Rented'),   -- רכב 220, לקוח 5, עובד 9
(225, 6, 11, '2025-06-10', '2025-06-20', 700, 'Rented'),  -- רכב 225, לקוח 6, עובד 11 (קרוב לסיום)
(230, 7, 2, '2025-06-12', '2025-06-22', 550, 'Rented'),   -- רכב 230, לקוח 7, עובד 2
(235, 8, 4, '2025-06-14', '2025-06-24', 650, 'Rented'),   -- רכב 235, לקוח 8, עובד 4
(240, 9, 6, '2025-06-05', '2025-06-20', 1200, 'Rented'),  -- רכב 240, לקוח 9, עובד 6 (השכרה ארוכה)
(245, 10, 8, '2025-06-01', '2025-06-25', 1500, 'Rented'); -- רכב 245, לקוח 10, עובד 8 (השכרה ארוכה)
go

-- הסטורית השכרות
-- אם אתה רוצה למחוק נתונים קיימים בטבלה לפני הוספה מחדש:
-- delete from RentalsHistory;
-- go

INSERT INTO RentalsHistory (carID, clientID, workerID, startDate, actualEndDate, finalPrice, rentalStatus)
VALUES
(202, 1, 1, '2025-05-01', '2025-05-05', 400, 'Returned OK'),      -- רכב 202, לקוח 1, עובד 1
(206, 2, 3, '2025-05-10', '2025-05-15', 600, 'Returned OK'),      -- רכב 206, לקוח 2, עובד 3
(211, 3, 5, '2025-04-20', '2025-04-25', 550, 'Returned Late'),    -- רכב 211, לקוח 3, עובד 5
(216, 4, 7, '2025-04-01', '2025-04-03', 300, 'Returned OK'),      -- רכב 216, לקוח 4, עובד 7
(221, 5, 9, '2025-03-15', '2025-03-20', 700, 'Minor Damage'),     -- רכב 221, לקוח 5, עובד 9
(226, 6, 11, '2025-03-01', '2025-03-07', 900, 'Returned OK'),     -- רכב 226, לקוח 6, עובד 11
(231, 7, 2, '2025-02-10', '2025-02-12', 350, 'Returned OK'),      -- רכב 231, לקוח 7, עובד 2
(236, 8, 4, '2025-02-01', '2025-02-08', 850, 'Returned Late'),    -- רכב 236, לקוח 8, עובד 4
(241, 9, 6, '2025-01-20', '2025-01-22', 450, 'Returned OK'),      -- רכב 241, לקוח 9, עובד 6
(246, 10, 8, '2025-01-05', '2025-01-10', 750, 'Major Damage');    -- רכב 246, לקוח 10, עובד 8
go

TRUNCATE TABLE [פרויקט גמר].dbo.Rentals;
TRUNCATE TABLE [פרויקט גמר].dbo.RentalsHistory;




--רכבים
INSERT INTO Cars (plate_number, model, years, typeID, branchID, color)
VALUES
('12-345-67', 'Toyota Corolla', 2020, 1, 1, 'Black'),
('89-012-34', 'Hyundai i10', 2021, 1, 2, 'Silver'),
('56-789-01', 'Honda Fit', 2022, 1, 3, 'White'),
('23-456-78', 'Ford Fiesta', 2023, 1, 4, 'Gray'),
('90-123-45', 'Kia Rio', 2021, 1, 5, 'Blue'),
('67-890-12', 'Mazda 3', 2020, 2, 6, 'Red'),
('34-567-89', 'VW Polo', 2019, 2, 1, 'Green'),
('01-234-56', 'Suzuki Swift', 2022, 2, 2, 'Black'),
('78-901-23', 'Skoda Fabia', 2023, 2, 3, 'White'),
('45-678-90', 'Renault Clio', 2024, 2, 4, 'Black'),
('10-101-01', 'Hyundai Tucson', 2022, 3, 5, 'Silver'),
('20-202-02', 'Kia Sportage', 2023, 3, 6, 'Gray'),
('30-303-03', 'Subaru Forester', 2018, 3, 1, 'Yellow'),
('40-404-04', 'Toyota RAV4', 2020, 3, 2, 'Blue'),
('50-505-05', 'Nissan Qashqai', 2021, 4, 3, 'Red'),
('60-606-06', 'Mitsubishi Outlander', 2019, 4, 4, 'White'),
('70-707-07', 'Peugeot 3008', 2020, 4, 5, 'Black'),
('80-808-08', 'Skoda Kodiaq', 2021, 5, 6, 'Silver'),
('90-909-09', 'VW Tiguan', 2022, 5, 1, 'Red'),
('01-010-10', 'Hyundai Santa Fe', 2023, 5, 2, 'Green'),
('11-112-23', 'Toyota Sienna', 2024, 6, 3, 'Blue'),
('22-223-34', 'Honda Odyssey', 2019, 6, 4, 'White'),
('33-334-45', 'Chrysler Pacifica', 2020, 6, 5, 'Black'),
('44-445-56', 'Mercedes Vito', 2021, 7, 6, 'Silver'),
('55-556-67', 'Ford Transit', 2022, 7, 1, 'Gray'),
('66-667-78', 'BMW X3', 2023, 8, 2, 'Yellow'),
('77-778-89', 'Audi Q5', 2024, 8, 3, 'Red'),
('88-889-90', 'Mercedes GLC', 2019, 8, 4, 'Blue'),
('99-990-01', 'Volvo XC60', 2020, 9, 5, 'White'),
('13-579-11', 'Lexus RX', 2021, 9, 6, 'Black'),
('24-680-22', 'BMW X5', 2022, 10, 1, 'Silver'),
('35-791-33', 'Audi Q7', 2023, 10, 2, 'Green'),
('46-802-44', 'Mercedes GLE', 2024, 10, 3, 'Black'),
('57-913-55', 'VW Crafter', 2019, 11, 4, 'Red'),
('68-024-66', 'Renault Master', 2020, 11, 5, 'White'),
('79-135-77', 'Mercedes Sprinter', 2021, 12, 6, 'Blue'),
('80-246-88', 'Ford Transit L', 2022, 12, 1, 'Gray'),
('91-357-99', 'Fiat Ducato', 2023, 12, 2, 'Yellow'),
('02-468-00', 'Citroen Jumper', 2024, 12, 3, 'Black'),
('13-579-10', 'Peugeot Boxer', 2019, 12, 4, 'Silver'),
('24-680-20', 'Iveco Daily', 2020, 12, 5, 'Red'),
('35-791-30', 'Nissan NV400', 2021, 12, 6, 'White'),
('46-802-40', 'Hyundai H350', 2022, 12, 1, 'Blue'),
('57-913-50', 'Opel Movano', 2023, 12, 2, 'Black'),
('68-024-60', 'MAN TGE', 2024, 12, 3, 'Gray'),
('79-135-70', 'VW Transporter', 2019, 11, 4, 'Yellow'),
('80-246-80', 'Mercedes Citan', 2020, 11, 5, 'Red'),
('91-357-90', 'Renault Kangoo', 2021, 11, 6, 'Silver'),
('02-468-01', 'Fiat Doblo', 2022, 11, 1, 'Black'),
('13-579-12', 'Citroen Berlingo', 2023, 11, 2, 'White');




TRUNCATE TABLE [פרויקט גמר].dbo.Cars;

DELETE FROM [פרויקט גמר].dbo.Cars;


