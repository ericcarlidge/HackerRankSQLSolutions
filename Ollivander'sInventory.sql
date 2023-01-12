-- WORK IN PROGRESS

SELECT Wands.id, Wands_Property.age, Wands.coins_needed, Wands.power
FROM Wands
JOIN Wands_Property ON Wands.code = Wands_Property.code
WHERE is_evil = 0
ORDER BY Wands.power DESC, Wands_Property.age DESC;
