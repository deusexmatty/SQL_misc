SELECT City, State, DATEDIFF(CURDATE(), units.created)/365 AS 'DurationYears', Count(UnitID) AS NumOfUnits
FROM units
WHERE Active = 1 AND Display = 1 AND units.`Terminated`=0 AND units.state NOT LIKE "%VA%"
   AND units.state NOT LIKE "%Ba%"
   AND units.state NOT LIKE "%Bo%" 
   AND units.state NOT LIKE "%ST%"
   AND units.state NOT LIKE "%SM%"
   AND units.state NOT LIKE "%Pa%"
   AND units.state NOT LIKE "%Tu%"
   AND units.state NOT LIKE "%La%"
   AND units.State NOT LIKE "%Is%"
GROUP BY City
HAVING COUNT(City)>=1
ORDER BY City ASC;

Select UnitID, City, State, DATEDIFF(CURDATE(), units.created)/365 AS 'DurationYears', count(City) AS NumUnitsInCity
FROM units
WHERE Active = 1 AND Display = 1 AND units.`Terminated`=0
Group by city;