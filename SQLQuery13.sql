CREATE TABLE Payments
(
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    CardNumber NVARCHAR(16),
    ExpirationDate NVARCHAR(10),
    Amount DECIMAL(10, 2)
)
