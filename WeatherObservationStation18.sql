SELECT ROUND((ABS(
    (SELECT MIN(lat_n) FROM station) - 
    (SELECT MAX(lat_n) FROM station))) +
        (ABS(
    (SELECT MIN(long_w) FROM station) - 
    (SELECT MAX(long_w) FROM station))), 4)
FROM station
LIMIT 1

-- ANSWER = 259.6859
