SELECT * FROM nytimes_2016

ALTER TABLE nytimes_2016
ADD COLUMN candidate VARCHAR(30);

CREATE VIEW township_only AS
SELECT id, candidate, clinton, trump, state, town AS "county/township"
FROM nytimes_2016
WHERE town IS NOT NULL
ORDER BY state

CREATE VIEW county_only AS
SELECT id, candidate, clinton, trump, state, county AS "county/township"
FROM nytimes_2016
WHERE county IS NOT NULL
ORDER BY state

CREATE TABLE nytimes_2016_combined AS
SELECT * FROM township_only
UNION
SELECT * FROM county_only

SELECT * FROM nytimes_2016_combined