SELECT
    DISTINCT teachers.name as teacher,
    cohorts.name as cohort,
    count(assistance_requests.*) as total_assistances
FROM
    assistance_requests
    JOIN teachers ON teachers.id = teacher_id
    JOIN students ON student_id = students.id
    JOIN cohorts ON cohorts.id = students.cohort_id
WHERE
    cohorts.name = 'JUL02'
GROUP BY 
    teachers.name, cohorts.name
ORDER BY
    teacher;