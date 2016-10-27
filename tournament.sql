-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE DATABASE tournament; 

CREATE TABLE players (
	playerID serial UNIQUE,
	name text,
	wins integer,
	losses integer,
	PRIMARY KEY (playerID)
);

CREATE TABLE matches (
	matchID serial UNIQUE PRIMARY KEY,
	winnerID text,
	loserID text
);