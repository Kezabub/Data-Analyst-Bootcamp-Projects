CREATE VIEW Regional AS

SELECT TOP 5 st.Name AS Region, SUM(soh.SubTotal) AS Sales 
FROM Sales.SalesOrderHeader AS soh JOIN Sales.SalesTerritory AS st ON soh.TerritoryID = st.TerritoryID 
WHERE st.CountryRegionCode = 'US' 
GROUP BY st.Name 
ORDER BY Sales DESC