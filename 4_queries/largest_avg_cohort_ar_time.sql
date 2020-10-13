SELECT coh.name AS name, AVG(ars.completed_at-ars.started_at) AS average_ar_time
  FROM assistance_requests ars
    JOIN students std
      ON ars.student_id = std.id
    JOIN cohorts coh
      ON std.cohort_id = coh.id
GROUP BY coh.name
ORDER BY average_ar_time DESC
LIMIT 1;