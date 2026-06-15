SELECT *
FROM ravenstack_feature_usage;

CREATE TABLE ravenstack_feature_usage1
LIKE ravenstack_feature_usage;

INSERT ravenstack_feature_usage1
SELECT *
FROM ravenstack_feature_usage;

SELECT *
FROM ravenstack_feature_usage1;

SELECT COUNT(*)
FROM ravenstack_feature_usage1;

UPDATE ravenstack_feature_usage1
SET is_beta_feature = CASE
WHEN is_beta_feature = 'True' THEN 1 
WHEN is_beta_feature = 'False' THEN 0 
ELSE is_beta_feature
END;

ALTER TABLE ravenstack_feature_usage1
MODIFY COLUMN is_beta_feature TINYINT,
MODIFY COLUMN usage_date DATE;

SELECT *
FROM ravenstack_feature_usage1;

SELECT DISTINCT feature_name
FROM ravenstack_feature_usage1;

SELECT MAX(usage_count), MIN(usage_count),
       MAX(usage_duration_secs), MIN(usage_duration_secs),
       MAX(error_count), MIN(error_count)
FROM ravenstack_feature_usage1;