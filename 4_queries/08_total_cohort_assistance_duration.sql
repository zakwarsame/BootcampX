SELECT
    cohorts.name as cohort_name, sum(completed_at - started_at) as total_duration
FROM
    assistance_requests
    JOIN students ON student_id = students.id
    JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;