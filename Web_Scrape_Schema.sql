

-- Creating the home_stats table with NAME as the primary key
CREATE TABLE home_stats (
    NAME VARCHAR(255) NOT NULL PRIMARY KEY,
    SEASON TEXT,
    TM TEXT,
    GP TEXT,
    MPG TEXT,
    PPG TEXT,
    RPG TEXT,
    APG TEXT,
    SPG TEXT,
    BPG TEXT,
    TPG TEXT,
    FGM TEXT,
    FGA TEXT,
    `FG%` TEXT,
    3PM TEXT,
    3PA TEXT,
    `3P%` TEXT,
    FTM TEXT,
    FTA TEXT,
    `FT%` TEXT,
    MIN TEXT,
    PTS TEXT,
    REB TEXT,
    AST TEXT,
    STL TEXT,
    BLK TEXT,
    TOV TEXT,
    PF TEXT,
    `+/-` TEXT
);

-- Creating the away_stats table with NAME as the primary key
CREATE TABLE away_stats (
    NAME VARCHAR(255) NOT NULL PRIMARY KEY,
    SEASON TEXT,
    TM TEXT,
    GP TEXT,
    MPG TEXT,
    PPG TEXT,
    RPG TEXT,
    APG TEXT,
    SPG TEXT,
    BPG TEXT,
    TPG TEXT,
    FGM TEXT,
    FGA TEXT,
    `FG%` TEXT,
    3PM TEXT,
    3PA TEXT,
    `3P%` TEXT,
    FTM TEXT,
    FTA TEXT,
    `FT%` TEXT,
    MIN TEXT,
    PTS TEXT,
    REB TEXT,
    AST TEXT,
    STL TEXT,
    BLK TEXT,
    TOV TEXT,
    PF TEXT,
    `+/-` TEXT
);


-- Inserting data into the home_stats table with trimmed and uppercased LOC
INSERT INTO home_stats 
SELECT 
    NAME, SEASON, TM, GP, MPG, PPG, RPG, APG, SPG, BPG, TPG, FGM, FGA, `FG%`, 
    3PM, 3PA, `3P%`, FTM, FTA, `FT%`, MIN, PTS, REB, AST, STL, BLK, TOV, PF, `+/-`
FROM player_stats
WHERE UPPER(TRIM(LOC)) = 'HOME';

-- Inserting data into the away_stats table with trimmed and uppercased LOC
INSERT INTO away_stats 
SELECT 
    NAME, SEASON, TM, GP, MPG, PPG, RPG, APG, SPG, BPG, TPG, FGM, FGA, `FG%`, 
    3PM, 3PA, `3P%`, FTM, FTA, `FT%`, MIN, PTS, REB, AST, STL, BLK, TOV, PF, `+/-`
FROM player_stats
WHERE UPPER(TRIM(LOC)) = 'AWAY';
