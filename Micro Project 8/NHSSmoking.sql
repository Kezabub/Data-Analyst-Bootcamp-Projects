SELECT TOP 100 PERCENT OrgName AS "NHS Region",
       ROUND(100.0 * SUM(CASE WHEN Measure = 'Women known to be smokers at time of delivery' THEN Value ELSE 0 END) / SUM(CASE WHEN Measure = 'Number of maternities' THEN Value ELSE 0 END), 1) AS "% Smokers"
FROM dbo.[smok-time-del-eng-q3-2223]
GROUP BY OrgName
ORDER BY "% Smokers" DESC;