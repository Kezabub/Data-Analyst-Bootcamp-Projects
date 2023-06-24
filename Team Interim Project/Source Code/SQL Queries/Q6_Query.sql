CREATE VIEW store_analysis AS
WITH sub AS
(
	SELECT sd.name AS StoreName, sd.SquareFeet AS StoreSize, sd.NumberEmployees AS TotalEmployees, sd.AnnualRevenue as YearlyRevenue, soh.TotalDue
	FROM Sales.vStoreWithDemographics AS sd
	JOIN Sales.Customer AS c ON sd.BusinessEntityID = c.StoreID
	JOIN Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
)
SELECT StoreName, StoreSize, TotalEmployees, YearlyRevenue, SUM(TotalDue) AS Revenue
FROM sub
GROUP BY StoreName, StoreSize, TotalEmployees, YearlyRevenue