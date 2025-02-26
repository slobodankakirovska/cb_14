# Paid Users Distribution
# How does the paid user percentage (e.g., Basic, Premium for LioCinema; VIP, 
# Premium for Jotstar) vary across different platforms? Analyse the proportion of 
# premium users in Tier 1, Tier 2, and Tier 3 cities and identify any notable trends or 
# differences.

SELECT 
    city_tier, 
    subscription_plan, 
    COUNT(user_id) AS user_count
FROM liocinema_db.subscribers
WHERE subscription_plan IN ('Basic', 'Premium')
GROUP BY city_tier, subscription_plan;
