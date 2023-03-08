-- As a column in SELECT

-- format 
-- SELECT (
--   SELECT count(*)
--   FROM table_name
-- ) as total, other_column
-- FROM other_table_name
-- ORDER BY total;

SELECT (
  SELECT count(assignments)
  FROM assignments
)-count(assignment_submissions) as total_incomplete
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- FROM sub select table
-- SELECT * FROM (
--   SELECT something_id
--   FROM someTable
--   WHERE something
-- ) as sub_table;

SELECT avg(total_students) as average_students
FROM (
  SELECT count(students) as total_students, cohorts.name as cohort_name
  FROM students
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
) as totals_table;

-- Search within a result set IN
-- SELECT * FROM table
-- WHERE id IN (
--   SELECT something_id
--   FROM someTable
--   WHERE something
-- );

SELECT assignments.name
FROM assignments 
WHERE id NOT IN
(
  SELECT assignment_id
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  WHERE students.name = 'Ibrahim Schimmel'
);