CREATE TABLE UserRequest (
    Requestid INT PRIMARY KEY,
    Current_problem VARCHAR(50),
    Ideas_solution VARCHAR(100),
    City VARCHAR(50),
    Near_station VARCHAR(50),
    Username VARCHAR(50),
    FOREIGN KEY (Username) REFERENCES Login(Username)
);
