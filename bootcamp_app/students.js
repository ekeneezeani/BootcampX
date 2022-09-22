const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

const cohort = process.argv[2];

pool
  .query(
    `
    SELECT DISTINCT teachers.name AS teacher
    FROM teachers
    JOIN assistance_requests ON teachers.id = teacher_id
    JOIN students ON students.id = student_id
    JOIN cohorts ON cohorts.id = cohort_id
    WHERE cohorts.name = '${cohort}' 
    ORDER BY teacher;
`
  )
  .then((res) => {
    const resRow = res.rows;
    for (const item of resRow) {
      console.log(`${cohort}`,item.teacher);
    }
  })
  .catch((err) => console.error("query error", err.stack));
