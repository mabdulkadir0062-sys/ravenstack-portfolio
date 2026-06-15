SELECT *
FROM ravenstack_accounts;

CREATE TABLE ravenstack_accounts1
LIKE ravenstack_accounts;

INSERT ravenstack_accounts1
SELECT *
FROM ravenstack_accounts;

SELECT * 
FROM ravenstack_accounts1;

SELECT COUNT(*) 
FROM ravenstack_accounts1;

UPDATE ravenstack_accounts1
SET is_trial = CASE
WHEN is_trial = 'TRUE' THEN 1 
WHEN is_trial = 'FALSE' THEN 0 
ELSE is_trial 
END,
churn_flag = CASE 
WHEN churn_flag = 'TRUE' THEN 1 
WHEN churn_flag = 'FALSE' THEN 0 
ELSE churn_flag 
END;

ALTER TABLE ravenstack_accounts1
MODIFY COLUMN signup_date DATE,
MODIFY COLUMN is_trial TINYINT,
MODIFY COLUMN churn_flag TINYINT;

SELECT *
FROM ravenstack_accounts1;

SELECT DISTINCT industry, country,
 referral_source, plan_tier, referral_source
FROM ravenstack_accounts1;

SELECT MAX(seats), MIN(seats)
FROM ravenstack_accounts1;
