SELECT tch.name as teacher, 
std.name as student, 
asn.name as assignment, 
(ars.completed_at-ars.started_at) as duration
  FROM assistance_requests ars
    JOIN teachers tch ON tch.id = ars.teacher_id
    JOIN students std ON std.id = ars.student_id
    JOIN assignments asn ON asn.id = ars.assignment_id
ORDER BY duration;