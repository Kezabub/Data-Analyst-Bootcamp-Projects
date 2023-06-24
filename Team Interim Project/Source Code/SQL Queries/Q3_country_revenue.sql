CREATE VIEW Country_Revenue AS
SELECT st.Name AS Country,  SUM(st.SalesLastYear + st.SalesYTD) AS Revenue
FROM Sales.SalesTerritory AS st
GROUP BY st.Name;
