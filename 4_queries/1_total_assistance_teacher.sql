SELECT COUNT(assistance_requests.id) as total_assistance, teachers.name as name
FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;