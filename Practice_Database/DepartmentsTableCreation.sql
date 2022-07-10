CREATE TABLE Departments  (
	ID INT IDENTITY(1,1) NOT NULL,
	Name VARCHAR(25) NOT NULL,
	PRIMARY KEY (ID)
);

SET IDENTITY_INSERT Departments ON

INSERT INTO Departments
	([ID],[Name])
VALUES
	(1,'HR'),
	(2,'Sales'),
	(3,'Tech')
;

