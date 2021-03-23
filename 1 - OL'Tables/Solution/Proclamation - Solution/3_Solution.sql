SELECT 
    'From the current day ' || LOWER(CRIME) ||
    ' will be punished with ' || LOWER(PUNISHMENT) ||
    ' and a fine of ' || ((FINE*1.45) * 0.8) || ' doubloons.'
AS 
    'Valid current law'
FROM PUNISHMENT