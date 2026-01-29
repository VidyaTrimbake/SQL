/* CASE STUDY 1: Netflix Subscription Conversion Analysis
   Author: Vidya Trimbake
   Date: 29-01-2026
   Goal: Calculate Conversion Rate and Avg Time to Subscribe
*/

-- Step 1: Identify the Trial Cohort (Users who started a trial)
WITH Trial_Cohort AS (
    SELECT 
        user_id, 
        event_date AS trial_start_date
    FROM Activity_Logs
    WHERE event_type = 'trial_start'
),

-- Step 2: Identify the Conversion Events (Users who paid)
Conversion_Events AS (
    SELECT 
        user_id, 
        event_date AS conversion_date
    FROM Activity_Logs
    WHERE event_type = 'paid_subscribe'
),

-- Step 3: Combine and calculate metrics
Final_Metrics AS (
    SELECT 
        t.user_id,
        t.trial_start_date,
        c.conversion_date,
        -- Check if user converted (1 if yes, 0 if no)
        CASE WHEN c.conversion_date IS NOT NULL THEN 1 ELSE 0 END AS converted,
        -- Calculate days taken to convert
        DATEDIFF(c.conversion_date, t.trial_start_date) AS days_to_convert
    FROM Trial_Cohort t
    LEFT JOIN Conversion_Events c ON t.user_id = c.user_id
)

-- Final Output: Aggregate the results
SELECT 
    COUNT(user_id) AS total_trial_users,
    SUM(converted) AS total_conversions,
    -- Calculate Conversion Rate as a percentage
    ROUND((SUM(converted) * 100.0 / COUNT(user_id)), 2) AS conversion_rate_pct,
    -- Calculate average days for those who actually converted
    ROUND(AVG(days_to_convert), 1) AS avg_days_to_convert
FROM Final_Metrics;
