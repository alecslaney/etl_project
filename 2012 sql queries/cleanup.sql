CREATE TABLE election_2012_thin AS
SELECT id, lastname AS "candidate", votes, statecode AS "state", countyname AS "county"
FROM election_2012;

CREATE TABLE election_2012_separate AS
SELECT * FROM election_2012_thin
WHERE candidate in ('Obama', 'Romney')
ORDER BY state, county, candidate;

SELECT * FROM election_2012_separate;