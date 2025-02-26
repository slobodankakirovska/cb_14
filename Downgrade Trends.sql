# Downgrade Trends
# How do downgrade trends differ between LioCinema and Jotstar? Are downgrades 
# more prevalent on one platform compared to the other?

SELECT 
    subscription_plan, 
    COUNT(user_id) AS total_users, 
    COUNT(CASE WHEN new_subscription_plan < subscription_plan THEN 1 END) AS downgrade_count
FROM jotstar_db.subscribers
GROUP BY subscription_plan;