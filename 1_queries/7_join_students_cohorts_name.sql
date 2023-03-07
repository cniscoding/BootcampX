-- INNER JOIN -- will only give us rows where there is a match between the two tables. Any students with a cohort_id of NULL will not appear in the results of this kind of join.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohort_id = cohorts.id;

-- OUTER JOIN -- RIGHT LEFT OR FULL -- SHORT TO RIGHT JOIN, LEFT JOIN, FULL OUTER JOIN

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students OUTER JOIN cohorts ON cohorts.id = cohort_id;