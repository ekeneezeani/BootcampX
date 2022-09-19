
-- JOIN IS SIMILAR TO INNER JOIN
-- SELECT students.name AS student_name, email, cohorts.name AS cohort_name
-- FROM students
-- JOIN cohorts ON cohort_id = cohorts.id

-- OUTER JOIN LEFT

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- OUTER JOIN RIGHT
-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- FULL JOIN
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;