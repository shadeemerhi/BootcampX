SELECT AVG(total_duration) AS average_total_duration
FROM (
    SELECT coh.name AS cohort, SUM(ars.completed_at-ars.started_at) AS total_duration
    FROM assistance_requests ars
      JOIN students std
        ON ars.student_id = std.id
      JOIN cohorts coh
        ON std.cohort_id = coh.id
  GROUP BY coh.name
  ORDER BY total_duration
) as total_durations;
