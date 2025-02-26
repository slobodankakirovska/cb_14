# Upgrade Patterns
# What are the most common upgrade transitions (e.g., Free to Basic, Free to VIP, 
# Free to Premium) for LioCinema and Jotstar? How do these differ across platforms? 

SELECT 
    subscription_plan, 
    COUNT(user_id) AS total_users, 
    COUNT(CASE WHEN new_subscription_plan > subscription_plan THEN 1 END) AS upgrade_count
FROM liocinema_db.subscribers
GROUP BY subscription_plan;
