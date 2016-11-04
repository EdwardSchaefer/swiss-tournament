-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

CREATE TABLE players(
	playerID serial UNIQUE PRIMARY KEY,
	name text
);

CREATE TABLE matches(
	matchID serial UNIQUE PRIMARY KEY,
	winnerID integer references players (playerID),
	loserID integer references players (playerID)
);

CREATE OR REPLACE VIEW standings as 
SELECT players.playerID, players.name, 
(select count(*) from matches where matches.winnerID = players.playerID) as winCount, 
(select count(*) from matches where players.playerID in (matches.winnerID, matches.loserID)) as matchCount
FROM players