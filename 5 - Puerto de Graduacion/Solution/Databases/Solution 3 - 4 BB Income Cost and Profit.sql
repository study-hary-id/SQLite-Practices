SELECT (INCOME - COST) AS PROFIT,
       INCOME,
       COST
  FROM (
           SELECT COUNT( * ) * 303 AS INCOME,
                  COST
             FROM (
                      SELECT *
                        FROM (
                                 SELECT julianday(date(STORAGEDATE, +'30 days') ) - julianday('1703-06-19') AS DAYS_LEFT
                                   FROM BARREL
                                  GROUP BY BARREL_ID
                                 HAVING DAYS_LEFT <= 18
                                  ORDER BY DAYS_LEFT ASC
                             )
                             AS INCOME
                  ),
                  (
                      SELECT SUM(LOAN) * COUNT(WORKER_ID) AS COST
                        FROM WORKER
                  )
       );
