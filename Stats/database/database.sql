START TRANSACTION;

DROP TABLE IF EXISTS player, team, ind_game, game CASCADE;


CREATE TABLE team (
    id serial PRIMARY KEY,
    city varchar(50),
    nickname varchar(50)
);


CREATE TABLE player (
    id serial PRIMARY KEY,
    team_id int,
    name varchar(50),

    CONSTRAINT fk_team_id FOREIGN KEY (team_id) REFERENCES team(id)
);


CREATE TABLE game (
    id serial PRIMARY KEY,
    home_team_id int,
    away_team_id int,
    home_team_score int,
    away_team_score int,

    CONSTRAINT fk_home_team_id FOREIGN KEY (home_team_id) REFERENCES team(id),
    CONSTRAINT fk_away_team_id FOREIGN KEY (away_team_id) REFERENCES team(id)
);



CREATE TABLE ind_game (
    id serial PRIMARY KEY,
    game_id int,
    player_id int,
    points int,
    rebounds int,
    assists int,
    steals int,
    blocks int,
    turnovers int,
    fgm int,
    fga int,
    threes_made int,
    threes_attempted int,
    ftm int,
    fta int,
    off_rebounds int,
    fouls int,
    dunks int,

    CONSTRAINT fk_game_id FOREIGN KEY (game_id) REFERENCES  game(id),
    CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES player(id)
);


INSERT INTO team (city, nickname) VALUES ('Atlanta', 'Hawks');
INSERT INTO team (city, nickname) VALUES ('Boston', 'Celtics');
INSERT INTO team (city, nickname) VALUES ('Brooklyn', 'Nets');
INSERT INTO team (city, nickname) VALUES ('Charlotte', 'Hornets');
INSERT INTO team (city, nickname) VALUES ('Chicago', 'Bulls');
INSERT INTO team (city, nickname) VALUES ('Cleveland', 'Cavaliers');
INSERT INTO team (city, nickname) VALUES ('Dallas', 'Mavericks');
INSERT INTO team (city, nickname) VALUES ('Denver', 'Nuggets');
INSERT INTO team (city, nickname) VALUES ('Detroit', 'Pistons');
INSERT INTO team (city, nickname) VALUES ('Golden State', 'Warriors');
INSERT INTO team (city, nickname) VALUES ('Houston', 'Rockets');
INSERT INTO team (city, nickname) VALUES ('Indiana', 'Pacers');
INSERT INTO team (city, nickname) VALUES ('Los Angeles', 'Clippers');
INSERT INTO team (city, nickname) VALUES ('Los Angeles', 'Lakers');
INSERT INTO team (city, nickname) VALUES ('Memphis', 'Grizzlies');
INSERT INTO team (city, nickname) VALUES ('Miami', 'Heat');
INSERT INTO team (city, nickname) VALUES ('Milwaukee', 'Bucks');
INSERT INTO team (city, nickname) VALUES ('Minnesota', 'Timberwolves');
INSERT INTO team (city, nickname) VALUES ('New Orleans', 'Pelicans');
INSERT INTO team (city, nickname) VALUES ('New York', 'Knicks');
INSERT INTO team (city, nickname) VALUES ('Oklahoma City', 'Thunder');
INSERT INTO team (city, nickname) VALUES ('Orlando', 'Magic');
INSERT INTO team (city, nickname) VALUES ('Philadelphia', '76ers');
INSERT INTO team (city, nickname) VALUES ('Phoenix', 'Suns');
INSERT INTO team (city, nickname) VALUES ('Portland', 'Trail Blazers');
INSERT INTO team (city, nickname) VALUES ('Sacramento', 'Kings');
INSERT INTO team (city, nickname) VALUES ('San Antonio', 'Spurs');
INSERT INTO team (city, nickname) VALUES ('Toronto', 'Raptors');
INSERT INTO team (city, nickname) VALUES ('Utah', 'Jazz');
INSERT INTO team (city, nickname) VALUES ('Washington', 'Wizards');


INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = '76ers'), 'Joel Embiid');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = '76ers'), 'James Harden');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = '76ers'), 'Tyrese Maxey');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = '76ers'), 'Tobias Harris');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = '76ers'), 'DeAnthony Melton');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = '76ers'), 'Mohamed Bamba');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = '76ers'), 'Patrick Beverley');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bucks'), 'Giannis Antetounkoumpo');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bucks'), 'Jrue Holiday');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bucks'), 'Khris Middleton');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bucks'), 'Brook Lopez');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bucks'), 'Bobby Portis');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bucks'), 'Malik Beasley');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bucks'), 'Pat Connaughton');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bucks'), 'Jae Crowder');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bucks'), 'Grayson Allen');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bulls'), 'Demar Derozan');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bulls'), 'Zach Lavine');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bulls'), 'Nikola Vucevic');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bulls'), 'Lonzo Ball');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bulls'), 'Alex Caruso');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bulls'), 'Patrick Williams');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Bulls'), 'Andre Drummond');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Cavaliers'), 'Donovan Mitchell');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Cavaliers'), 'Darius Garland');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Cavaliers'), 'Evan Mobley');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Cavaliers'), 'Jarrett Allen');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Cavaliers'), 'Caris Levert');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Cavaliers'), 'Max Strus');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Cavaliers'), 'Isaac Okoro');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Celtics'), 'Jayson Tatum');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Celtics'), 'Jaylen Brown');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Celtics'), 'Kristaps Porzingis');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Celtics'), 'Malcolm Brogdon');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Celtics'), 'Robert Williams III');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Celtics'), 'Al Horford');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Celtics'), 'Derrick White');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Clippers'), 'Kawhi Leonard');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Clippers'), 'Paul George');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Clippers'), 'Russell Westbrook');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Clippers'), 'Ivica Zubac');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Clippers'), 'Norman Powell');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Clippers'), 'Mason Plumlee');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Clippers'), 'Kenyon Martin Jr');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Grizzlies'), 'Ja Morant');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Grizzlies'), 'Jaren Jackson Jr');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Grizzlies'), 'Desmond Bane');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Grizzlies'), 'Marcus Smart');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Grizzlies'), 'Steven Adams');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Grizzlies'), 'Brandon Clarke');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Grizzlies'), 'Xavier Tillman');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hawks'), 'Trae Young');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hawks'), 'Dejounte Murray');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hawks'), 'Clint Capela');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hawks'), 'Onyeka Okungwu');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hawks'), 'DeAndre Hunter');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hawks'), 'Bogdan Bogdanovic');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hawks'), 'Saddiq Bey');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), 'Anthony Davis');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), '');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), '');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), '');





INSERT INTO game (home_team_id, away_team_id, home_team_score, away_team_score)
VALUES ((SELECT id FROM team WHERE nickname = 'Bucks'), (SELECT id FROM team WHERE nickname = 'Lakers'), 120, 104);

INSERT INTO game (home_team_id, away_team_id, home_team_score, away_team_score)
VALUES ((SELECT id FROM team WHERE nickname = 'Lakers'), (SELECT id FROM team WHERE nickname = 'Bucks'), 93, 91);

INSERT INTO ind_game (game_id, player_id, points, rebounds, assists, steals, blocks, turnovers, fgm, fga, threes_made, threes_attempted,
					ftm, fta, off_rebounds, fouls, dunks)
					VALUES (1, (SELECT id FROM player where name = 'Giannis Antetounkoumpo'), 40, 20, 5, 3, 8, 2, 21, 26, 0, 1, 3, 3, 6, 2, 14);

INSERT INTO ind_game (game_id, player_id, points, rebounds, assists, steals, blocks, turnovers, fgm, fga, threes_made, threes_attempted,
					ftm, fta, off_rebounds, fouls, dunks)
					VALUES (2, (SELECT id FROM player where name = 'Giannis Antetounkoumpo'), 49, 14, 9, 1, 9, 6, 29, 43, 0, 0, 5, 6, 3, 4, 7);

INSERT INTO ind_game (game_id, player_id, points, rebounds, assists, steals, blocks, turnovers, fgm, fga, threes_made, threes_attempted,
					ftm, fta, off_rebounds, fouls, dunks)
					VALUES (1, (SELECT id FROM player where name = 'Anthony Davis'), 26, 10, 8, 2, 6, 1, 18, 27, 0, 1, 3, 4, 2, 4, 5);

INSERT INTO ind_game (game_id, player_id, points, rebounds, assists, steals, blocks, turnovers, fgm, fga, threes_made, threes_attempted,
					ftm, fta, off_rebounds, fouls, dunks)
					VALUES (2, (SELECT id FROM player where name = 'Anthony Davis'), 36, 10, 8, 2, 6, 1, 24, 27, 0, 1, 3, 4, 2, 4, 5);

COMMIT;
