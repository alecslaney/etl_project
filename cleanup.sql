SELECT * FROM nytimes_2016

ALTER TABLE nytimes_2016
ADD COLUMN candidate VARCHAR(30);

CREATE VIEW township_only AS
SELECT id, clinton, trump, state, town AS "county/township"
FROM nytimes_2016
WHERE town IS NOT NULL
ORDER BY state

SELECT * from township_only

CREATE VIEW county_only AS
SELECT id, clinton, trump, state, county AS "county/township"
FROM nytimes_2016
WHERE county IS NOT NULL
ORDER by state

SELECT * FROM county_only

CREATE TABLE combined AS
SELECT * FROM township_only
UNION
SELECT * FROM county_only

SELECT * from combined