SELECT students.name, count(assistance_requests.*) as total_assistances
FROM assistance_requests
JOIN students ON students.id = student_id
GROUP BY name
HAVING name = 'Elliot Dickinson'