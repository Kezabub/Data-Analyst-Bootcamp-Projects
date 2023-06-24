SELECT TOP 1 airportpassengers.Month, SUM(Heathrow_Passengers) AS Passengers
FROM airportpassengers
GROUP BY airportpassengers.Month
ORDER BY Passengers DESC