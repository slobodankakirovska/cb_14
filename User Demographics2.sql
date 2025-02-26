# User Demographics
# What is the distribution of users by age group, city tier, and subscription plan for each 
# platform? 

SELECT 
    age_group, 
    city_tier, 
    subscription_plan, 
    COUNT(user_id) AS user_count
FROM jotstar_db.subscribers
GROUP BY age_group, city_tier, subscription_plan;
