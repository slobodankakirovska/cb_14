# Total Users & Growth trends
# What is the total number of users for LioCinema and Jotstar, and how do they 
# compare in terms of growth trends (January–November 2024)?

SELECT 
    COUNT(user_id) AS total_users, 
    MONTH(subscription_date) AS month, 
    YEAR(subscription_date) AS year
FROM jotstar_db.subscribers
GROUP BY year, month
ORDER BY year, month;
