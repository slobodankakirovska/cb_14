# Inactivity Correlation
# How do inactivity patterns correlate with total watch time or average watch time? Are 
# less engaged users more likely to become inactive? 

SELECT 'LioCinema' AS platform, 
       s.subscription_plan, 
       COUNT(s.user_id) AS total_users, 
       ROUND(AVG(c.total_watch_time_mins), 2) AS avg_watch_time,
       COUNT(CASE WHEN s.last_active_date IS NULL THEN 1 END) AS inactive_users
FROM liocinema_db.subscribers s
LEFT JOIN liocinema_db.content_consumption c ON s.user_id = c.user_id
GROUP BY s.subscription_plan
UNION ALL
SELECT 'Jotstar' AS platform, 
       s.subscription_plan, 
       COUNT(s.user_id) AS total_users, 
       ROUND(AVG(c.total_watch_time_mins), 2) AS avg_watch_time,
       COUNT(CASE WHEN s.last_active_date IS NULL THEN 1 END) AS inactive_users
FROM jotstar_db.subscribers s
LEFT JOIN jotstar_db.content_consumption c ON s.user_id = c.user_id
GROUP BY s.subscription_plan;

