-- SQLite
UPDATE university_rankings
SET world_rank = world_rank + 1
WHERE year = 2014 AND world_rank >= 350;

INSERT INTO university_rankings(institution, country, world_rank, score, year)
VALUES ('Duke Tech', 'USA', 350, 60.5, 2014);