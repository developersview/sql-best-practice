CREATE TABLE Employees (
    ID INT IDENTITY(1,1) NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255),
    PhoneNumber VARCHAR(10),
    ManagerID INT,
    DepartmentID INT NOT NULL,
    Salary INT NOT NULL,
    HireDate DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ManagerID) REFERENCES Employees(ID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);

SET IDENTITY_INSERT Employees ON;

INSERT INTO Employees
    ([ID],[FirstName],[LastName],[PhoneNumber],[ManagerID],[DepartmentID],[Salary],[HireDate])
VALUES
    (1, 'James', 'Smith', 1234567890, NULL, 1, 1000, '01-01-2011'),
    (2, 'John', 'Johnson', 2468101214, '1', 1, 400, '03-23-2005'),
    (3, 'Michael', 'Williams', 1357911131, '1', 2, 600, '05-12-2009'),
    (4, 'Johnathon', 'Smith', 1212121212, '2', 1, 500, '07-24-2016')
;
