CREATE VIEW BestPerformer AS

SELECT TOP 6 st.CountryRegionCode AS Country, SUM(soh.SubTotal) AS Sales 
FROM Sales.SalesOrderHeader AS soh JOIN Sales.SalesTerritory AS st ON soh.TerritoryID = st.TerritoryID 
GROUP BY st.CountryRegionCode -- group by country code 
ORDER BY Sales DESC -- order by sales in descending order