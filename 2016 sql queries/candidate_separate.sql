CREATE TABLE clinton_votes AS
SELECT id, candidate, clinton AS "votes", state, "county/township"
FROM nytimes_2016_clean;

UPDATE clinton_votes
SET candidate = 'clinton';

CREATE TABLE trump_votes AS
SELECT id, candidate, trump AS "votes", state, "county/township"
FROM nytimes_2016_clean;

UPDATE trump_votes
SET candidate = 'trump';

CREATE TABLE election_2016_separate AS
SELECT * FROM clinton_votes
UNION
SELECT * FROM trump_votes
ORDER BY state, "county/township", candidate;

SELECT * FROM election_2016_separate;