CREATE VIEW SalesTeamPerformance AS
SELECT 
  sp.BusinessEntityID,
  CONCAT(p.FirstName, ' ', p.LastName) AS FullName,
  sp.Bonus,
  sp.SalesLastYear,
  sp.SalesYTD,
  sp.SalesQuota,
  COUNT(soh.SalesOrderID) AS SalesCount
FROM Sales.SalesPerson AS sp
JOIN Person.Person AS p
ON sp.BusinessEntityID = p.BusinessEntityID
JOIN Sales.SalesOrderHeader AS soh
ON sp.BusinessEntityID = soh.SalesPersonID
GROUP BY 
  sp.BusinessEntityID,
  CONCAT(p.FirstName, ' ', p.LastName),
  sp.Bonus,
  sp.SalesLastYear,
  sp.SalesYTD,
  sp.SalesQuota;