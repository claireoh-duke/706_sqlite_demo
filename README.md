# SQLite Demo 
## Managing University Ranking Database 
Using SQLite to manage university ranking database
*** 
### 1️⃣ Connecting Database to VScode 
```bash
sqlite3 'university_database.db'
```
### 2️⃣ Summary Statistics
```sql
SELECT COUNT(*) AS total_university, 
        AVG(score) AS average_score,
        MIN(score) AS minimum_score,
        MAX(score) AS maximum_score,
        AVG(patents) AS average_patents,
        MIN(patents) AS minimum_patents,
        MAX(patents) AS maximum_patents
FROM university_rankings;
```
Result: 
total_university  average_score     minimum_score  maximum_score  average_patents   minimum_patents  maximum_patents
----------------  ----------------  -------------  -------------  ----------------  ---------------  ---------------
1645              48.9622917933131  43.36          100.0          367.187347931873  1                871      

### 3️⃣ Insert Data 
```sql
UPDATE university_rankings
SET world_rank = world_rank + 1
WHERE year = 2014 AND world_rank >= 350;

INSERT INTO university_rankings(institution, country, world_rank, score, year)
VALUES ('Duke Tech', 'USA', 350, 60.5, 2014);
```

Result:
world_rank  institution  country  score  year
----------  -----------  -------  -----  ----
350         Duke Tech    USA      60.5   2014

### 4️⃣ Count Number of TOP 200 Japan University in 2013
```sql
SELECT COUNT(*) AS Top200_Japan_University_2013
FROM university_rankings
WHERE year = 2013 AND country = 'Japan' AND world_rank <= 200;
```

Result: 
Top200_Japan_University_2013
----------------------------
6       

### 5️⃣ Update Score 
```sql
UPDATE university_rankings
SET score = score + 1.2
WHERE year = 2014 AND institution = 'University of Oxford';
```

Result: 
institution           score
--------------------  -----
University of Oxford  98.71

### 6️⃣ Delete Data 
```sql
DELETE FROM university_rankings
WHERE year = 2015 AND score < 45;
```

Result: 
year  total_university
----  ----------------
2012  100             
2013  100             
2014  1001            
2015  444  

