# Content library Comparison
# What is the total number of contents available on LioCinema vs. Jotstar? How do 
# they differ in terms of language and content type? 

SELECT 
    COUNT(content_id) AS total_contents, 
    language, 
    content_type
FROM liocinema_db.contents
GROUP BY language, content_type;
