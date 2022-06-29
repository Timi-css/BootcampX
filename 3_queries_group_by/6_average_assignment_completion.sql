SELECT students.name as student, avg(assignment_submission.duration) as average_assignment_duration, avg(assignment.duration) as average_estimated_duration
FROM students
JOIN assignment_submission ON student_id = students.id
JOIN assignment ON assignment.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submission.duration) < avg(assignment.duration)
ORDER BY average_assignment_duration;