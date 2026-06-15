SELECT *
FROM ravenstack_churn_events;

CREATE TABLE ravenstack_churn_events1
LIKE ravenstack_churn_events;

INSERT ravenstack_churn_events1
SELECT *
FROM ravenstack_churn_events;

SELECT * 
FROM ravenstack_churn_events1;

SELECT COUNT(*)
FROM ravenstack_churn_events1;

SELECT DISTINCT reason_code
FROM ravenstack_churn_events1;

UPDATE ravenstack_churn_events1
SET preceding_upgrade_flag = CASE
WHEN preceding_upgrade_flag = 'True' THEN 1 
WHEN preceding_upgrade_flag= 'False' THEN 0 
ELSE preceding_upgrade_flag 
END,

preceding_downgrade_flag = CASE
WHEN preceding_downgrade_flag = 'True' THEN 1 
WHEN preceding_downgrade_flag = 'False' THEN 0 
ELSE preceding_downgrade_flag
END,

is_reactivation = CASE
WHEN is_reactivation = 'True' THEN 1 
WHEN is_reactivation = 'False' THEN 0 
ELSE is_reactivation
END;

ALTER TABLE ravenstack_churn_events1
MODIFY COLUMN preceding_upgrade_flag TINYINT,
MODIFY COLUMN preceding_downgrade_flag TINYINT,
MODIFY COLUMN is_reactivation TINYINT,
MODIFY COLUMN churn_date DATE;


SELECT * 
FROM ravenstack_churn_events1; 

SELECT DISTINCT feedback_text
FROM ravenstack_churn_events1;

UPDATE ravenstack_churn_events1
SET feedback_text = NULL 
WHERE feedback_text = '';

SELECT * 
FROM ravenstack_churn_events1; 

SELECT DISTINCT feedback_text
FROM ravenstack_churn_events1;

SELECT MAX(refund_amount_usd), MIN(refund_amount_usd)
FROM ravenstack_churn_events1;