CREATE VIEW store_duration_revenue AS
WITH sub AS
(
	SELECT sd.name AS StoreName, sd.YearOpened AS YearOpened, 2023 - sd.YearOpened AS TradingDuration, sd.AnnualRevenue AS YearlyRevenue, soh.TotalDue
	FROM Sales.vStoreWithDemographics AS sd
	JOIN Sales.Customer AS c ON sd.BusinessEntityID = c.StoreID
	JOIN Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
)
SELECT StoreName, YearOpened, TradingDuration, YearlyRevenue, SUM(TotalDue) AS Revenue
FROM sub
GROUP BY StoreName, YearOpened, TradingDuration, YearlyRevenue