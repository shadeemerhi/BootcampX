SELECT count(*) as total_requests, tch.name
  FROM assistance_requests ars
    JOIN teachers tch
      ON ars.teacher_id = tch.id
        WHERE tch.name = 'Waylon Boehm'
GROUP BY tch.id