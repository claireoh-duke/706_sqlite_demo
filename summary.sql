-- SQLite
-- Summary of database 
SELECT COUNT(*) AS total_university, 
        AVG(score) AS average_score,
        MIN(score) AS minimum_score,
        MAX(score) AS maximum_score,
        AVG(patents) AS average_patents,
        MIN(patents) AS minimum_patents,
        MAX(patents) AS maximum_patents
FROM university_rankings;
