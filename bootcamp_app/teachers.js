const { Pool } = require('pg');
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
// Store all potentially malicious values in an array. 
const values = [`${cohortName}`];

const queryString1 = `
SELECT DISTINCT teachers.name as teacher, coh.name as cohort
FROM assistance_requests ars
  JOIN teachers
    ON ars.teacher_id = teachers.id
  JOIN students
    ON ars.student_id = students.id
  JOIN cohorts coh
    ON coh.id = students.cohort_id
WHERE coh.name = $1
ORDER BY teacher`;

pool.query(queryString1, values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`)
  })
});