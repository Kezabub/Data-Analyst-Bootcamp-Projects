CREATE VIEW VacationHours_Bonus3 AS
SELECT VacationHours, HRE.BusinessEntityID, Bonus, P.FirstName + ' ' + P.MiddleName + ' ' + P.LastName AS Name
FROM HumanResources.Employee HRE
INNER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID = HRE.BusinessEntityID
INNER JOIN Person.Person P
ON SP.BusinessEntityID = P.BusinessEntityID;