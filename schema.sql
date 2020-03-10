CREATE TABLE IF NOT EXISTS nytimes_2016
(
    id SERIAL,
    clinton numeric(1000,4) NOT NULL,
    trump numeric(1000,4) NOT NULL,
    rpt INTEGER,
    state VARCHAR(100) NOT NULL,
    county VARCHAR(100),
    town VARCHAR(100),
    place VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS election_2012
(
    id SERIAL,
    county2012Id INTEGER NOT NULL,
    StateCode VARCHAR(10) NOT NULL,
    CountyName VARCHAR(100) NOT NULL,
    CountyNumber INTEGER NOT NULL,
    FipsCode INTEGER NOT NULL,
    PrecintsReporting INTEGER,
    TotalPrecincts INTEGER,
    CountyTotalVotes INTEGER,
    SourceOrder INTEGER,
    Party VARCHAR(20),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Votes INTEGER NOT NULL,
    PRIMARY KEY(id)
);