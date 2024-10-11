
---reading the data 
SELECT *
FROM Student_Mental_Health

SELECT stay, 
       ROUND(COUNT(inter_dom), 2) AS count_int, 
       ROUND(AVG(CAST(todep AS NUMERIC)), 2) AS average_phq, 
       ROUND(AVG(CAST(tosc AS NUMERIC)), 2) AS average_scs, 
       ROUND(AVG(CAST(toas AS NUMERIC)), 2) AS average_as
FROM  Student_Mental_Health
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC
LIMIT 9;
