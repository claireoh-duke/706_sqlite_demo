-- SQLite
-- Delete score below 45 in 2015 
DELETE FROM university_rankings
WHERE year = 2015 AND score < 45;