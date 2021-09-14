SELECT
    cohorts.name as cohort_name, avg(completed_at - started_at) as average_assistance_time
FROM
    assistance_requests
    JOIN students ON student_id = students.id
    JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;