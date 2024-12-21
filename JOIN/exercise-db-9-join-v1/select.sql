SELECT 
    reports.id AS id,
    students.fullname AS fullname,
    students.class AS class,
    students.status AS status,
    reports.study AS study,
    reports.score AS score
FROM 
    reports
JOIN 
    students
ON 
    reports.student_id = students.id
WHERE 
    students.status = 'active' AND reports.score < 70
ORDER BY 
    reports.score ASC;
