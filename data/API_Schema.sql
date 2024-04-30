

-- Accidentally deleted script when creating tables 

-- Insert into PlayerPersonal (assuming you have the data from player_info with the same column names)
INSERT INTO PlayerPersonal (id, first_name, last_name, position, height, weight, jersey_number, college, country)
SELECT id, first_name, last_name, position, height, weight, jersey_number, college, country
FROM player_info;

-- Insert into PlayerTeam (assuming team data is part of the player_info and you want to keep draft_year, draft_round, draft_number together with team)
INSERT INTO PlayerTeam (id, draft_year, draft_round, draft_number, team)
SELECT id, draft_year, draft_round, draft_number, team
FROM player_info;
