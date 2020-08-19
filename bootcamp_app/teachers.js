const pool = require('./students');

const cohort = process.argv[2];

pool.query(`
SELECT DISTINCT(teachers.name) as teacher, cohorts.name as cohort
FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = '${cohort || 'JUL02'}'
ORDER BY teacher;
`)
  .then(res => {
    res.rows.forEach(item => {
      console.log(`${item.cohort}: ${item.teacher}`);
    });
  });