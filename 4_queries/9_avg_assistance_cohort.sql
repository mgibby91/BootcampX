
SELECT (SELECT SUM(completed_at-started_at) as total_duration
  FROM cohorts
    JOIN students ON cohorts.id = cohort_id
    JOIN assistance_requests ON students.id = student_id) / COUNT(cohorts.id) as average_total_duration
FROM cohorts;
