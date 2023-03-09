SELECT count(assistance_requests.completed_at) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
GROUP BY name
HAVING name = 'Waylon Boehm'