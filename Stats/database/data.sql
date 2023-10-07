START TRANSACTION;



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
VALUES ((SELECT id FROM team where nickname = 'Heat'), 'Jimmy Butler');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), 'Bam Adebayo');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), 'Tyler Herro');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), 'Caleb Martin');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), 'Kevin Love');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), 'Duncan Robinson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Heat'), 'Kyle Lowry');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), 'Lamelo Ball');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), 'Terry Rozier III');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), 'Miles Bridges');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), 'Brandon Miller');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), 'Gordon Hayward');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), 'Mark Williams');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Hornets'), 'P.J. Washington');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), 'Lauri Markkanen');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), 'Walker Kessler');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), 'John Collins');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), 'Collin Sexton');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), 'Jordan Clarkson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), 'Talen Horton-Tucker');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Jazz'), 'Kelly Olynyk');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), 'DeAaron Fox');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), 'Domantas Sabonis');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), 'Malik Monk');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), 'Keegan Murray');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), 'Kevin Huerter');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), 'Harrison Barnes');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Kings'), 'Trey Lyles');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), 'Jalen Brunson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), 'Julius Randle');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), 'R.J. Barrett');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), 'Mitchell Robinson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), 'Josh Hart');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), 'Immanuel Quickley');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Knicks'), 'Quentin Grimes');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), 'Anthony Davis');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), 'LeBron James');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), 'DeAngelo Russell');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), 'Austin Reaves');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), 'Christian Wood');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), 'Rui Hachimura');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Lakers'), 'Jarred Vanderbilt');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), 'Paolo Banchero');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), 'Franz Wagner');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), 'Wendell Carter Jr.');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), 'Markelle Fultz');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), 'Cole Anthony');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), 'Jonathan Isaac');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), 'Jalen Suggs');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), 'Joe Ingles');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Magic'), 'Moritz Wagner');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), 'Luka Doncic');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), 'Kyrie Irving');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), 'Tim Hardaway Jr.');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), 'Jaden Hardy');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), 'Dwight Powell');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), 'Seth Curry');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), 'Grant Williams');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Mavericks'), 'Josh Green');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), 'Mikal Bridges');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), 'Nicolas Claxton');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), 'Cameron Johnson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), 'Spencer Dinwiddie');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), 'Dorian Finney-Smith');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), 'Ben Simmons');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), 'Cameron Thomas');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nets'), 'Royce Oneale');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), 'Nikola Jokic');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), 'Jamal Murray');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), 'Aaron Gordon');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), 'Michael Porter Jr.');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), 'Kentavious Caldwell-Pope');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), 'Christian Braun');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Nuggets'), 'Zeke Nnaji');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), 'Tyrese Haliburton');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), 'Myles Turner');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), 'Bennedict Mathurin');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), 'Bruce Brown Jr.');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), 'Buddy Hield');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), 'Obi Toppin');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), 'T.J. McConnell');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), 'Jalen Smith');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pacers'), 'Andrew Nembhard');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), 'Zion Williamson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), 'Brandon Ingram');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), 'C.J. McCollum');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), 'Jonas Valanciunas');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), 'Herbert Jones');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), 'Trey Murphy');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pelicans'), 'Cody Zeller');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), 'Cade Cunningham');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), 'Bojan Bogdanovic');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), 'Jaden Ivey');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), 'Jalen Duren');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), 'James Wiseman');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), 'Marvin Bagley III');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), 'Monte MOrris');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Pistons'), 'Joe Harris');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), 'Pascal Siakam');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), 'Scottie Barnes');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), 'OG Anunoby');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), 'Jakob Poeltl');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), 'Gary Trent Jr.');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), 'Dennis Schroder');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Raptors'), 'Chris Boucher');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), 'Jalen Green');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), 'Fred VanVleet');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), 'Alperen Sengun');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), 'Jabari Smith Jr.');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), 'Tari Eason');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), 'Dillon Brooks');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Rockets'), 'Kevin Porter Jr.');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), 'Victor Wembanyama');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), 'Devin Vassell');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), 'Keldon Johnson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), 'Jeremy Sochan');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), 'Tre Jones');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), 'Zach Collins');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Spurs'), 'Malaki Branham');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), 'Kevin Durant');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), 'Devin Booker');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), 'Bradley Beal');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), 'Deandre Ayton');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), 'Bol Bol');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), 'Josh Okogie');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Suns'), 'Eric Gordon');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), 'Shai Gilgeous-Alexander');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), 'Josh Giddey');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), 'Jalen Williams');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), 'Luguentz Dort');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), 'Chet Holmgren');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), 'Vasilije Micic');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), 'Aleksej Pokusevski');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), 'Isaiah Joe');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Thunder'), 'Jaylin Williams');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), 'Anthony Edwards');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), 'Karl-Anthony Towns');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), 'Rudy Gobert');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), 'Jaden McDaniels');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), 'Mike Conley');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), 'Naz Reid');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), 'Kyle Anderson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Timberwolves'), 'Shake Milton');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), 'Damian Lillard');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), 'Anfernee Simons');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), 'Jusuf Nurkic');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), 'Jerami Grant');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), 'Shaedon Sharpe');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), 'Scoot Henderson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Trail Blazers'), 'Matisse Thybulle');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), 'Steph Curry');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), 'Chris Paul');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), 'Klay Thompson');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), 'Draymond Green');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), 'Andrew Wiggins');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), 'Kevon Looney');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Warriors'), 'Jonathan Kuminga');



INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), 'Kyle Kuzma');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), 'Jordan Poole');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), 'Tyus Jones');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), 'Danilo Gallinari');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), 'Daniel Gafford');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), 'Corey Kispert');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), 'Delon Wright');

INSERT INTO player (team_id, name)
VALUES ((SELECT id FROM team where nickname = 'Wizards'), 'Landry Shamet');





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