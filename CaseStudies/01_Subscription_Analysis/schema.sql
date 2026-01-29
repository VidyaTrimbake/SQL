-- 1. Create the Tables
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    signup_date DATE NOT NULL
);

CREATE TABLE Activity_Logs (
    log_id INT PRIMARY KEY,
    user_id INT,
    event_type VARCHAR(20), -- 'trial_start', 'trial_end', 'paid_subscribe'
    event_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- 2. Insert Mock Data (Diverse scenarios: successful conversion, churn, and late conversion)
INSERT INTO Users (user_id, signup_date) VALUES 
(1, '2024-01-01'), (2, '2024-01-02'), (3, '2024-01-05'), (4, '2024-01-10'), (5, '2024-01-15');

INSERT INTO Activity_Logs (log_id, user_id, event_type, event_date) VALUES 
-- User 1: Quick Converter
(101, 1, 'trial_start', '2024-01-01'),
(102, 1, 'trial_end',   '2024-01-08'),
(103, 1, 'paid_subscribe', '2024-01-09'),

-- User 2: Churned (Never subscribed)
(104, 2, 'trial_start', '2024-01-02'),
(105, 2, 'trial_end',   '2024-01-09'),

-- User 3: Converted within window
(106, 3, 'trial_start', '2024-01-05'),
(107, 3, 'trial_end',   '2024-01-12'),
(108, 3, 'paid_subscribe', '2024-01-20'),

-- User 4: Churned
(109, 4, 'trial_start', '2024-01-10'),
(110, 4, 'trial_end',   '2024-01-17');
