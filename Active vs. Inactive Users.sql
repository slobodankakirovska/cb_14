# Active vs. Inactive Users
# What percentage of LioCinema and Jotstar users are active vs. inactive? How do 
# these rates vary by age group and subscription plan?


SELECT 
    subscription_plan, 
    COUNT(user_id) AS total_users, 
    COUNT(CASE WHEN last_active_date IS NOT NULL THEN 1 END) AS active_users,
    COUNT(CASE WHEN last_active_date IS NULL THEN 1 END) AS inactive_users
FROM liocinema_db.subscribers
GROUP BY subscription_plan;
