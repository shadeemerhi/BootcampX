SELECT asn.id, asn.name, day, chapter, count(*) as total_requests
  FROM assignments asn
    JOIN assistance_requests ars
      ON ars.assignment_id = asn.id
GROUP BY asn.id
ORDER BY total_requests DESC;