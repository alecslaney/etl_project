SELECT * FROM nytimes_2016

ALTER TABLE nytimes_2016
ADD COLUMN candidate VARCHAR(30);

SELECT * FROM nytimes_2016

CREATE VIEW filtered_2016 AS
SELECT id, candidate, clinton, trump, state, county
FROM nytimes_2016

SELECT * FROM filtered_2016

CREATE VIEW clinton_votes AS
SELECT id, candidate, clinton AS "votes", state, county
FROM filtered_2016

UPDATE clinton_votes
SET candidate = 'clinton'

SELECT * FROM clinton_votes

CREATE VIEW trump_votes AS
SELECT id, candidate, trump AS "votes", state, county
FROM filtered_2016

UPDATE trump_votes
SET candidate = 'trump'

SELECT * FROM trump_votes

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