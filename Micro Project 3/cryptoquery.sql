SELECT TOP 1 * FROM
(SELECT #, coin, price,
    RANK() OVER (ORDER BY [mkt cap] DESC) AS market_cap,
    RANK() OVER (ORDER BY [24h] DESC) AS daily_volume,
    RANK() OVER (ORDER BY [7d] DESC) AS weekly_rank
  FROM Crypto) AS test
  WHERE market_cap <= 25 AND daily_volume <= 50