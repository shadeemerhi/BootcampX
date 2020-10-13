SELECT count(*) as total_requests, std.name
  FROM assistance_requests ars
    JOIN students std
      ON std.id = ars.student_id
        WHERE name = 'Elliot Dickinson'
GROUP BY std.id;