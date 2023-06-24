SELECT TOP 5 region, COUNT(value) as total_vehicles
from EVTOTALSTOCK
WHERE region NOT LIKE '%Eu%'
   AND region NOT LIKE '%World%'
   AND region NOT LIKE '%EU%'
   AND region NOT LIKE '%world%'
GROUP BY region
ORDER BY total_vehicles DESC
