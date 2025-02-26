# Watch Time Analysis
# What is the average watch time for LioCinema vs. Jotstar during the analysis period? 
# How do these compare by city tier and device type? 


SELECT 'LioCinema' AS platform, 
       s.city_tier, 
       c.device_type, 
       ROUND(AVG(c.total_watch_time_mins), 2) AS avg_watch_time
FROM liocinema_db.subscribers s
JOIN liocinema_db.content_consumption c ON s.user_id = c.user_id
GROUP BY s.city_tier, c.device_type
UNION ALL
SELECT 'Jotstar' AS platform, 
       s.city_tier, 
       c.device_type, 
       ROUND(AVG(c.total_watch_time_mins), 2) AS avg_watch_time
FROM jotstar_db.subscribers s
JOIN jotstar_db.content_consumption c ON s.user_id = c.user_id
GROUP BY s.city_tier, c.device_type;


