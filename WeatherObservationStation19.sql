SELECT ROUND(SQRT(POWER(
                        ((SELECT MAX(lat_n) FROM station) - 
                        (SELECT MIN(lat_n) FROM station)), 2) +
                  POWER(
                        ((SELECT MAX(long_w) FROM station) - 
                        (SELECT MIN(long_w) FROM station)), 2)
                    ), 4)
FROM station
LIMIT 1

-- ANSWER = 184.1616
