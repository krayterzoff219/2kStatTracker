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

COMMIT;