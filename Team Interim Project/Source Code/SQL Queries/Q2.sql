CREATE VIEW VacationHours_Bonus AS
SELECT VacationHours, HRE.BusinessEntityID, Bonus
FROM HumanResources.Employee HRE
INNER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID = HRE.BusinessEntityID