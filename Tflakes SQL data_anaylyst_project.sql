SELECT *
FROM data_analyst_jobs;

-- Q1
SELECT COUNT(*)
FROM data_analyst_jobs 
Answer 1793;

-- Q2
SELECT *
FROM data_analyst_jobs
LIMIT 10
Answer EXONMOBILE;

-- Q3
SELECT COUNT(location)
From data_analyst_jobs
WHERE location ILIKE 'tn'
Answer 21;

-- Q3
SELECT COUNT(location)
From data_analyst_jobs
WHERE location ILIKE 'ky' OR location ILIKE 'tn'
Answer 27

-- Q4
SELECT COUNT(location)
From data_analyst_jobs
WHERE location ILIKE 'tn' AND star_rating >4
Answer 3

-- Q5
SELECT Count(*)
From data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
Answer 151

-- Q6
SELECT AVG(star_rating)AS avg_rating,location AS state
From data_analyst_jobs
GROUP BY location
ORDER BY avg_rating DESC;
Answer NE Nebraska

-- Q7
SELECT COUNT(DISTINCT title)
From data_analyst_jobs
ANSWER 881;

-- Q8
SELECT COUNT(DISTINCT title)
From data_analyst_jobs
WHERE location ILIKE 'CA'
Answer 230;

-- Q9
SELECT company, AVG(star_rating)  
From data_analyst_jobs
WHERE review_count > 5000
GROUP BY company;

-- Q9
SELECT COUNT(company)
From data_analyst_jobs
WHERE review_count > 5000
Answer 184;

-- Q10
SELECT company, AVG(star_rating)  
From data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg DESC
ANSWER General Motors 4,1999;

-- Q11
SELECT COUNT(DISTINCT title)
From data_analyst_jobs
WHERE title ILIKE '%analyst%'
ANSWER 774;

-- Q12
SELECT title
From data_analyst_jobs
WHERE title NOT ILIKE '%analyst%' AND title NOT ILIKE '%analytics%'
Answer 4 Tableau and Data