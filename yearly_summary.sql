-- SQLite
SELECT year, COUNT(*) AS total_university 
FROM university_rankings
GROUP BY year 
