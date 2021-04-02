SELECT Sugarbags,
       Barrels
  FROM (
           SELECT COUNT(DISTINCT SUGARBAG_ID) AS Sugarbags
             FROM SUGARBAG
       ),
       (
           SELECT COUNT(DISTINCT BARREL_ID) AS Barrels
             FROM BARREL
       );
