SELECT sum(assignment_submission.duration) as total_duration
FROM assignment_submission
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';