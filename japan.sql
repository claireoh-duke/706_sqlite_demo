-- SQLite
-- Top 200 japan university in 2013 
SELECT COUNT(*) AS Top200_Japan_University_2013
FROM university_rankings
WHERE year = 2013 AND country = 'Japan' AND world_rank <= 200;