-- SQLite
-- Update Score of University of Oxford in 2014
UPDATE university_rankings
SET score = score + 1.2
WHERE year = 2014 AND institution = 'University of Oxford';