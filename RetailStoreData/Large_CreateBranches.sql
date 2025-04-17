
CREATE TABLE Branches (
    BranchID INT PRIMARY KEY,
    BranchName NVARCHAR(50),
    City NVARCHAR(50)
);

INSERT INTO Branches (BranchID, BranchName, City) VALUES
(1, 'Branch A', 'Cairo'),
(2, 'Branch B', 'Alexandria'),
(3, 'Branch C', 'Giza');
