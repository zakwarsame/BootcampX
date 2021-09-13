SELECT
    sum(assignment_submissions.duration) as total_duration
FROM
    students
    LEFT JOIN assignment_submissions ON students.id = assignment_submissions.student_id
    LEFT JOIN cohorts ON students.cohort_id = cohorts.id
WHERE
    cohorts.name = 'FEB12';