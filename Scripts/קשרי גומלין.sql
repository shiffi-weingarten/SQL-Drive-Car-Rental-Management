
ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_TypeCar FOREIGN KEY (typeID) REFERENCES typeCar (typeID);


ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Branches FOREIGN KEY (branchID)REFERENCES Branches (branchID);


ALTER TABLE typeCar
ADD CONSTRAINT FK_typeCar_Prices FOREIGN KEY (priceID)REFERENCES Prices (priceID);


ALTER TABLE Workers
ADD CONSTRAINT FK_Workers_Branches FOREIGN KEY (branchID)REFERENCES Branches (branchID);


ALTER TABLE Rentals
ADD CONSTRAINT FK_Rentals_Cars FOREIGN KEY (carID)REFERENCES Cars (carID);


ALTER TABLE Rentals
ADD CONSTRAINT FK_Rentals_Clients FOREIGN KEY (clientID)REFERENCES Clients (clientID);


ALTER TABLE Rentals
ADD CONSTRAINT FK_Rentals_Workers FOREIGN KEY (workerID)REFERENCES Workers (workerID);