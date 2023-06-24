SELECT TOP 1 manufacturer, MAX(evteslacomp.[max range (miles)]) as total
FROM evteslacomp
WHERE manufacturer != 'Tesla'
GROUP BY manufacturer
ORDER BY total DESC