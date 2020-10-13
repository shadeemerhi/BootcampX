SELECT DISTINCT teachers.name as teacher, coh.name as cohort
  FROM assistance_requests ars
    JOIN teachers
      ON ars.teacher_id = teachers.id
    JOIN students
      ON ars.student_id = students.id
    JOIN cohorts coh
      ON coh.id = students.cohort_id
WHERE coh.name = 'JUL02'
ORDER BY teacher;