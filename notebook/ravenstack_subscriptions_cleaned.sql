SELECT * 
FROM ravenstack_subscriptions;

CREATE TABLE ravenstack_subscriptions1 
LIKE ravenstack_subscriptions;

SELECT * 
FROM ravenstack_subscriptions1;

SELECT COUNT(*)
FROM ravenstack_subscriptions1;



INSERT ravenstack_subscriptions1
SELECT *
FROM ravenstack_subscriptions;

UPDATE ravenstack_subscriptions1
SET start_date = STR_TO_DATE(start_date, '%m/%d/%Y');

ALTER TABLE ravenstack_subscriptions1
MODIFY COLUMN start_date DATE;

UPDATE ravenstack_subscriptions1
SET end_date = NULL 
WHERE end_date = '';


UPDATE ravenstack_subscriptions1
SET end_date = STR_TO_DATE(end_date, '%m/%d/%Y');

ALTER TABLE ravenstack_subscriptions1
MODIFY COLUMN end_date DATE;

SELECT end_date 
FROM ravenstack_subscriptions1;

SELECT * 
FROM ravenstack_subscriptions1;

UPDATE ravenstack_subscriptions1
SET 
is_trial= CASE
 WHEN is_trial = 'TRUE' THEN 1 WHEN is_trial = 'FALSE' THEN 0 ELSE is_trial
 END,
upgrade_flag = CASE
 WHEN upgrade_flag = 'TRUE' THEN 1 WHEN upgrade_flag = 'FALSE' THEN 0 ELSE upgrade_flag
 END,
 downgrade_flag = CASE
 WHEN downgrade_flag = 'TRUE' THEN 1 WHEN downgrade_flag = 'FALSE' THEN 0 ELSE downgrade_flag
 END,
churn_flag = CASE
 WHEN churn_flag = 'TRUE' THEN 1 WHEN churn_flag = 'FALSE' THEN 0 ELSE churn_flag
 END,
auto_renew_flag = CASE
WHEN auto_renew_flag = 'TRUE' THEN 1 WHEN auto_renew_flag = 'FALSE' THEN 0 ELSE auto_renew_flag
 END;
 
 ALTER TABLE ravenstack_subscriptions1
  MODIFY COLUMN is_trial TINYINT(1),
 MODIFY COLUMN upgrade_flag TINYINT(1),
 MODIFY COLUMN  downgrade_flag TINYINT(1),
 MODIFY COLUMN churn_flag TINYINT(1),
 MODIFY COLUMN auto_renew_flag TINYINT(1);
 
 SELECT * 
 FROM ravenstack_subscriptions1;
 
 SELECT MAX(mrr_amount), MIN(mrr_amount),
 MAX(arr_amount), MIN(arr_amount)
 FROM ravenstack_subscriptions1;
 