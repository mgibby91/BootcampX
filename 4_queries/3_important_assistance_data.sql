SELECT teachers.name as teacher,
  students.name as student,
  assignments.name as assignment,
  (completed_at - started_at) as duration
FROM students
  JOIN assistance_requests ON student_id = students.id
  JOIN teachers ON teachers.id = teacher_id
  JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;
