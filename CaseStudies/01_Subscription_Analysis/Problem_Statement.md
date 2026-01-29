Case Study 1: Netflix Subscription Conversion Analysis

1. Business Problem
Context: The Product team at a streaming service has launched a 7-day free trial. They need to understand the "Conversion Funnel"—specifically, how many users who start a trial actually transition into a paid subscription.
Objective: * Calculate the overall Conversion Rate from trial to paid.
Identify the Average Time to Convert for users who upgrade.
Find the "Drop-off" points where users stop engaging.

2. Data Model
To solve this, we are using two main tables:
Users: Contains account creation details (user_id, signup_date).
Activity_Logs: A transactional log of user actions. This is a "Long Format" table where one user has multiple rows for different events:
trial_start
trial_end
paid_subscribe
Relationship: Users.user_id (PK) links to Activity_Logs.user_id (FK) in a One-to-Many relationship.

4. Edge Cases & Assumptions
In a real-world scenario, I am accounting for the following:
Multiple Trials: If a user has multiple trials, we only consider the first trial_start event to measure initial conversion.
Conversion Window: We define a successful conversion as a paid_subscribe event that happens after a trial_start but within 30 days of the trial ending.
Missing Events: Users who have a trial_start but no paid_subscribe are treated as "Churned" (calculated as NULLs in a LEFT JOIN).

5. Solving Strategy (The SQL Plan)
I will solve this using Common Table Expressions (CTEs) to maintain clean, readable code:
Trial_Cohort CTE: Filter the logs to identify the unique set of users who started a trial.
Conversion_Events CTE: Filter the logs to find users who successfully paid.
Join & Aggregate: Join these two sets on user_id. Use COUNT and CASE statements to calculate the percentage and DATEDIFF to find the time-to-convert.
